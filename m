Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 994A91075C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 17:27:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/HTGcee4MusmWl5ec2kwaWKMWZ57zk7uYOnMIGE9no=; b=kHE3s4FLeQmrD/
	DePsAuWNjHWxBb+iLXtpxylPFlfRGa+otuk54tlYMM0rdhI9TFyil+7kSmUMUOxWMP23ptXZ0EyQD
	IQNxV4SwWfwaMrQwGoMVPObo2J1NFJL1jp4ZTI8qyi3i/ujeF8ZVcK6M1+d7sY7uoz81aq4BgtHbt
	IgIh7XBAmN0NbbGQPquOMbkLqeLcALSTDmQruZ4LrVVCq5h/kABt+2BHlpdiouD9We/z3pbY0uCMg
	f02QPU6eKIR19siWzUGoRofSscJ5Da1t/mKkwohVDyLGT1iPU8ryNkzhUavDoUYggG7rgANBWDsAS
	5wNG14oc9dM8azVSwyOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYBme-0007jV-Nn; Fri, 22 Nov 2019 16:27:48 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYBmV-0007j3-9B
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 16:27:40 +0000
Received: by mail-io1-xd43.google.com with SMTP id z193so8731230iof.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 08:27:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XlWqqCQ+zgEV72jaObyUbNZTFY8rKw/Sl0dnc6Dl/5A=;
 b=Q3de4ll9e8KMpxI6muGFZLyE6AtK8cNP9PPf7FhGVILpdUDr2/fmfkA6lyoQW2n2TR
 n/d4o06GOFMQKFA/uxZwpohzLAewPAEWEl1D0i3RqNxIxxH3yCaK3+CaFFHK91qnMiPa
 JnHQ+AP3izQjZA8A7uZRODuPBE2ygcvsWnFI25OD4yGrQjWYMpxYHzNoBfGTKyRlkLvS
 lG3ibCe/VgG0y5KwtrkoVOJ5YlJfrK5JwIHTw3ruMuM/D9c50iLAd7Svfuxmw08j9X+n
 DuWPON1UvQXTEWc4VQAk+szrUVfQdjN8OJ0oQAhQyoo1I43xjI01M6nie/C6DSNvvJir
 GZtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XlWqqCQ+zgEV72jaObyUbNZTFY8rKw/Sl0dnc6Dl/5A=;
 b=joC/HjfBhJ16id8xP1icLk0qSnUnl5Wv4btqHMOeBagrqsafd5SACfflDG3hw+9FLd
 gq4MLbRxo5Ogc/SnKAtqMSaVosMkcVmgOKTnJT93RawNnDpzBG3nqvCZrp3L8YakuOhK
 hhiss0gsO/a9Ds0DD7aLriAuvbaafDU8jRAPLN1WKWKq/SfM3uG1RMUdV9RVPVzwcAR7
 cTqnwhxmGYbPr+29JukM9NEHFbQFhdXW/eCtQ1/XccS3LZfusTeOBb5hUrZXsF7sbsE9
 nfUyIOndKjHF3KRSgO8secMd3yvJUrA12Qt4FjlYPdkkjE6Q02L35NZ+f/Ecx19aVnk8
 4quA==
X-Gm-Message-State: APjAAAVVEZ0slU8DTpKsCmsCEMaqn+iqI106P8WYfZ75okg5o+10bd7J
 UrK6wOmzIZiSKa/mpL953Q+P6dqbsgPP1lKbq6EZoQ==
X-Google-Smtp-Source: APXvYqyif/FcVg31H4mCMrqc1tAv9+xfOMC4ku1jEbZz0D4MzKrvW2UuCa7rSztTlQQZp6E44d6wzwy8qjw4Fx0IG+w=
X-Received: by 2002:a6b:c389:: with SMTP id t131mr13745566iof.50.1574440057783; 
 Fri, 22 Nov 2019 08:27:37 -0800 (PST)
MIME-Version: 1.0
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
 <20191121203555.GC813260@kroah.com>
In-Reply-To: <20191121203555.GC813260@kroah.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Fri, 22 Nov 2019 09:27:26 -0700
Message-ID: <CANLsYkyumUDrP6ic0towr68S6pxL1psZHVP0XTRC+Tf82O4wQQ@mail.gmail.com>
Subject: Re: [stable 4.19+][PATCH 01/20] i2c: stm32f7: fix first byte to send
 in slave mode
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_082739_327287_203AEFFC 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "# 4 . 7" <stable@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 21 Nov 2019 at 13:35, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Fri, Nov 15, 2019 at 03:33:37PM -0700, Mathieu Poirier wrote:
> > From: Fabrice Gasnier <fabrice.gasnier@st.com>
> >
> > commit 915da2b794ce4fc98b1acf64d64354f22a5e4931 upstream
>
> That commit is not in Linus's tree :(

:o(  Apologies for that - probably a copy/paste problem.

>
> I'll stop here.  Please check all of these and resend the whole thing.
>
> Also, does this series also apply fully to 5.3.y?

Normally it should have and that is what I assumed.  I just did a
quick test and I'm wrong - as you probably noticed since you're
pointing it out.  Forget the whole thing and I'll send another set (or
two).

>
> thanks,
>
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
