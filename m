Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A600E15CA05
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 19:11:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sj9LT0bVp/KXh8P5XD2u/fSe8pvWb3aAZUw+X+dVdZo=; b=jTl/fiI6WlHxGd
	a2vZFNdPUMp1ElSm5Ipel5d0nzMDoxGLjSyj37ObW4qpZPpBtKnyxjcmLxMafgkfF+xAk9DUsojWq
	QBHE0raejQR9eqRs2ITdw3k8KVqe0EsjJ0bHXLfFW4Ja1Ni1hkQ4ukrBt1KsMh8rN0Q7yks+4lkJ7
	UKE72JhB3KFzoYPwYVgvaJ9nF7Uscncc97O4aiPcvT+pBZldq2HBU6LXJaBgfCFybCbTkN0fpq8LA
	EHQIENCNez5lIHBCqO4iNOAOxZFSmM28c+Blfzw6uRaDAsL43QUDaMVhXwcPtVwef+HyP/FloqG1i
	xmaZol7mAMFlNXyCjTYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2IxQ-0004zq-CQ; Thu, 13 Feb 2020 18:11:24 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2IxG-0004yt-Sp
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 18:11:17 +0000
Received: by mail-lj1-x242.google.com with SMTP id v17so7700593ljg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 10:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EuxVXqo0aLZOHDOucp4vbQndf0tOU7++wA3AtEmGBpw=;
 b=fAaIg/8ux70EQiQpgn3mUB6nFui/A2paoKIJeaWZbLEdTL5kpOBkJBUFHWxQFKCXAR
 hdga3DG2R/MFIRy7zFfSp4ZQKb3pvJjXw9Qcx+wRmcmwNZkXJIt/MConhjPzsr4Z4MNy
 dWu0arsyksu0AK7JqiqRgO11JmtdupXzDXpHAqpQABRIBaMXk5VdYgl43dB59tVRtRXj
 4uKHCwzDx4ufdChhKAmEqsFiZULQvn+btVHIwKwNlfcU6z642R4+mA0uyvG3LGNjigyi
 MIXAJ86LhHhWEsROWucZcslFhq4C2TaNszH9lD8VwEyrKQtR1tGumGwpZNHRzWNX4grS
 My/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EuxVXqo0aLZOHDOucp4vbQndf0tOU7++wA3AtEmGBpw=;
 b=kL8GhsMejoAv0E5riVH9XIYCYyQ31adTWvKTf3TsR7fvyDLxsRjCzFsp65H1Opz4X2
 mY5g2EzR8vMnUq3wzafsIql6XHdGvT4QPyXcbPuGAsbXSasbx//+7lj+rnq7NTf4LfZi
 6sMkg7ldaS5YdCU1j88eIt25PXhsjtMGOyqxU2kL98LiMVL3IXcgp9gkUOTcODveJ2xk
 pujvJzA85W82K6jiUtw0mcg+MjLoSTMGeGolEWzFa1fNmdsNvamQEk3nkoAVZn3lr4X7
 l0f/ljgtvev8pVbMsQlb3Ifhu4mXO1oQLSjRlZBs1VQDUWDSAFZMu4BXs7txgu2mv/S2
 UXSQ==
X-Gm-Message-State: APjAAAXlJpOxFwIPeVxQbdIAUIJfXT0rlcct7Zk/5CyTKYvBvjFgbBic
 VM6EHTkHoQTBJbDZonePLQI=
X-Google-Smtp-Source: APXvYqzzT+FLUGY7cXzPsygITqUHZQgOYAok8PALBHATY6k8I9bEwK7EFmVCMYTPxGMkzKG+gNRuhA==
X-Received: by 2002:a2e:9157:: with SMTP id q23mr11857429ljg.196.1581617472996; 
 Thu, 13 Feb 2020 10:11:12 -0800 (PST)
Received: from kedthinkpad ([5.20.204.163])
 by smtp.gmail.com with ESMTPSA id d24sm1655804lfl.58.2020.02.13.10.11.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 10:11:12 -0800 (PST)
Date: Thu, 13 Feb 2020 20:11:10 +0200
From: Andrey Lebedev <andrey.lebedev@gmail.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 1/1] Support LVDS output on Allwinner A20
Message-ID: <20200213181110.GA25367@kedthinkpad>
References: <20200210195633.GA21832@kedthinkpad>
 <20200211072004.46tbqixn5ftilxae@gilmour.lan>
 <20200211204828.GA4361@kedthinkpad>
 <20200212125345.j6e3txfjqekuxh2s@gilmour.lan>
 <20200212224653.GA19494@kedthinkpad>
 <20200213092433.sc2rs7el63mwvf3y@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213092433.sc2rs7el63mwvf3y@gilmour.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_101114_930321_C3AF3BBF 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrey.lebedev[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, wens@csie.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 10:24:33AM +0100, Maxime Ripard wrote:
> > > do you have a board when you have been able to test it?
> >
> > Yes, I have the hardware (Cubieboard 2) at hand, but I cannot change the
> > any physical connections on it. FWIW, it is https://openvario.org, the
> > device we are (painfully) trying to upgrade from old kernel-3.4 with
> > proprietary mali drivers to contemporary software.
> 
> What painpoints do you have?

So, even though proprietary mali drivers worked well for us, they seem
to hold us back to old kernel-3.4, and it started to get harder to avoid
various compatibility issues with newer software. Since there seemed to
be a good progress with OSS lima driver lately, we decided to try to
replace mali with lima. And that naturally pulled to switch to DRM/KMS.

The first painpoint is this LVDS support problem: after a week of trial
and error, I discovered that support was simply not there. But it seemed
that not that much was actually missing and after couple of evenings
deep into debugging, here we are.

Another one is the screen rotation: the device is installed into the
glider' instrument panel, and some pilots prefer it in portrait
orientation.  Under old mali setup, all that (seemingly) was required
was setting "fbcon=rotate:n" boot arg, and both linux console and
graphical app (https://xcsoar.org/) rotated "automagically". With new
DRM/KMS setup, only console is rotated, all graphical apps seem to see
the screen in its "natural" landscape orientation. Do you know if there
is any way to leverage DMS/KMS infrastructure to make screen appear
rotated for userspace apps (writing to /sys/class/graphics/fb0/rotate
didn't work)?  There's of course a plan B to teach the app to rotate its
output, but that leads to problem number 3.

And the 3rd outstanding problem is that app doesn't really work under
lima module and lima mesa driver. It starts, but renders a black window.
I haven't dug deeply into this yet, but it is possible that some opengl
API isn't supported in OSS drivers yet (even though app only renders 2d
graphics).

Hopefully that wasn't too much complaining for you :) If you have any
insight on possible causes or attack vectors on any of these, that would
help a lot. Also, please feel free to correct any of false assumptions I
make above, I'm happy to learn more about this.


-- 
Andrey Lebedev aka -.- . -.. -.. . .-.
Software engineer
Homepage: http://lebedev.lt/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
