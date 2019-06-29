Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F84E5ABCA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 16:25:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CRfpnWpl9uqXn2rPceQiGq3g/0yLes2Cd4i+MOtN7w=; b=ZqeFrjiDLxUhIY
	SgzYftajLK+7m/iF8gc2D3mDYPQy2ut3haGiu92hzwsY4A6YsJEJbVEO/IPh4z+qZX+2EQtQ//9aY
	pGq2ukv67/14TA+sNRl28hH7iU9plMGtxMOL4lhr7FPxZI0f+Q0IdKWvNRCveCkZuQP8ch2iZdNEc
	lJpKX6+zCV3Ua+i1NvZbabxmWUK+9CWI4/GR/lvgk892lk60CiUKPXrk+yS6qdf4W0Dba4DV6h8s0
	I0sDGxv1Uk4oBKbkV0j29QyycyqpUYIrL951I+gZ+vrRXm9VEfdkmPccqxzgE2b0mZn1dJZPNgHVz
	1bRi9oZKFm1pbvJQUtgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhEIS-0000Sr-LL; Sat, 29 Jun 2019 14:25:44 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhEIG-0000S2-9v
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 14:25:33 +0000
Received: by mail-wm1-x344.google.com with SMTP id w9so11206317wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Jun 2019 07:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tSfTfCg1RYrQS9+orWf92BVXcSGyjMupz270+2KJ+Us=;
 b=Wmn42cCjIZF370922nlT8XBZNT0vFC3qdUoivrJz5yLafRIjdx1Vw+bUvno+QUBVO5
 oMyQcmwqGx4DE3Y07CmSTM0IATWqZAW8kgg+hDEKwh+1CP4NznlAWonwVsCaGpQLaVCV
 I2vA/VdkUZjqS9WvauRGJBO3Xjdwe01bpXzqQP8wAMh3LJ6yI1E5Z9SfpRw+TuNVA5cx
 Mol2Xo2HUenKPsAtO6b1Hxjmm06+PdB0ii0cFoQihuSTWnRJjwjpf6NZuH7lsl3/21RK
 LnPOrpaBytkjll+vsC5zrv5VKacw2e2sTlF82+ldUSC/dM1uFOjAFEnxgQGkqlBXSG7l
 +TOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tSfTfCg1RYrQS9+orWf92BVXcSGyjMupz270+2KJ+Us=;
 b=sQicLgcoNRiTSVR1mpGvlM/JlybC6zVVl3uSH1LgCOQJe1ILeTVkJzhW7Se3MG/KoU
 /x4MBvP7RVH8ISKGIoxFVLryoklHNj8ke/bffS4lIEuu/qfhJte+U8yPCQmFmFqVrp/2
 qQ2Wx7rBHbXURrFhN5qybwUzC6mtr/dJi5zyYrfJnLBI+ETML6UHmFcDKVWwG7Q8HM2A
 +8C00peJyxp7hFeunEghGy5PSFhbm5jpRfT8b1Pps3tb/n8B3KbEAQps5O0MJhK65EBW
 siopHNn8q59rTdoUq5KM/0eMwWF9K91fSLN2B7O67zouO58H7N7Q/jJo6beoGoXTkmcw
 NntA==
X-Gm-Message-State: APjAAAXa0FpD1/A/eOan+HQ6nF2HDVua86vkQXvu9b0MpGrkOHL+3S5l
 Yz6mB4yIpXDnFINgMLDoiQ==
X-Google-Smtp-Source: APXvYqzYjeGlAIXCK0Otnr3tBdPOmwP6gFHgUXBBLaR5nRWD1D7mhQsGKJ7ZXMMjG4yeTA5UDqjZKg==
X-Received: by 2002:a1c:dc46:: with SMTP id t67mr9957034wmg.159.1561818328264; 
 Sat, 29 Jun 2019 07:25:28 -0700 (PDT)
Received: from avx2 ([46.53.248.49])
 by smtp.gmail.com with ESMTPSA id g123sm3503855wme.12.2019.06.29.07.25.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 07:25:27 -0700 (PDT)
Date: Sat, 29 Jun 2019 17:25:10 +0300
From: Alexey Dobriyan <adobriyan@gmail.com>
To: Andreas Dilger <adilger@dilger.ca>
Subject: Re: [PATCH V2] include: linux: Regularise the use of FIELD_SIZEOF
 macro
Message-ID: <20190629142510.GA10629@avx2>
References: <20190611193836.2772-1-shyam.saini@amarulasolutions.com>
 <20190611134831.a60c11f4b691d14d04a87e29@linux-foundation.org>
 <6DCAE4F8-3BEC-45F2-A733-F4D15850B7F3@dilger.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6DCAE4F8-3BEC-45F2-A733-F4D15850B7F3@dilger.ca>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_072532_376001_EEF19C9F 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (adobriyan[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: keescook@chromium.org, kvm@vger.kernel.org,
 kernel-hardening@lists.openwall.com, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, devel@lists.orangefs.org,
 linux-kernel@vger.kernel.org, Shyam Saini <shyam.saini@amarulasolutions.com>,
 linux-mips@vger.kernel.org, linux-mm@kvack.org, linux-sctp@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-ext4 <linux-ext4@vger.kernel.org>, intel-gvt-dev@lists.freedesktop.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 mayhs11saini@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 03:00:10PM -0600, Andreas Dilger wrote:
> On Jun 11, 2019, at 2:48 PM, Andrew Morton <akpm@linux-foundation.org> wrote:
> > 
> > On Wed, 12 Jun 2019 01:08:36 +0530 Shyam Saini <shyam.saini@amarulasolutions.com> wrote:

> I did a check, and FIELD_SIZEOF() is used about 350x, while sizeof_field()
> is about 30x, and SIZEOF_FIELD() is only about 5x.
> 
> That said, I'm much more in favour of "sizeof_field()" or "sizeof_member()"
> than FIELD_SIZEOF().  Not only does that better match "offsetof()", with
> which it is closely related, but is also closer to the original "sizeof()".
> 
> Since this is a rather trivial change, it can be split into a number of
> patches to get approval/landing via subsystem maintainers, and there is no
> huge urgency to remove the original macros until the users are gone.  It
> would make sense to remove SIZEOF_FIELD() and sizeof_field() quickly so
> they don't gain more users, and the remaining FIELD_SIZEOF() users can be
> whittled away as the patches come through the maintainer trees.

The signature should be

	sizeof_member(T, m)

it is proper English,
it is lowercase, so is easier to type,
it uses standard term (member, not field),
it blends in with standard "sizeof" operator,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
