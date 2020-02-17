Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0011516106A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 11:50:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZ3u+LDBCjjIG4JVz48+mCuI7SmPoofLwuzxtG3Snmw=; b=cy7D6UdCSIo2j1
	UZzucyrXEOwrA5SGztjWMx/iA45l9tJuoL/oQf9Hb+mmUEPTrdFLFwh/oc7lQGEWYAi+U16pr+vyu
	5aqRarCWqEigYGgUpNmP4Z/6YrA4pzQKleQK5KDRSSwixY/7Doh5KoyVYw7ApFLwRMTFrunLrJoED
	iPEF/W70EUt95n3Qq0wC4efefTdwejds9VcQwjkEvhoN6CSZQwa9NfpoBaDhE626S/c2JUUmlh2Vn
	TX9doGJ/XZAOLiVLFWO6LIk1ipaX+VvV6MEQdr9A2a/1pQv57USawuze4auTcJ75KUEEc8J078gp8
	VkzdsylkgWWE6U5gcB+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3dya-0003d7-Ch; Mon, 17 Feb 2020 10:50:08 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3dyL-0003cR-D0
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 10:49:54 +0000
Received: by mail-ot1-x344.google.com with SMTP id l2so9450961otp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 02:49:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6MkNl3Abs/Zhpl/WspSWXMtoc/Dld+RTVCvPuIDTGmM=;
 b=iCWesEqn79wrDAMoUjzzwp5x2orkx7XfePkUaMJEDylcZXa07OlgSTfCTS2Eh6NYMk
 t1zVkR74buksJ0bBuxqUtoUD6gPtTRit7gaFecJS2S9t89HchGipLixE/uFoodO3Dx1M
 Sl2dYVF9uzU3/BuLNrIhhWSNa3BFBwxdx6wSLJMlk6Pgo65Tiu/W4CybO6PMdkbXuNZV
 eageRQ6zuP+stzxhdP9j4dioXOEWu8dIQgkjlDYh3FXsLBFIRyJSV1e67srb4SBuSXie
 QP/ngLCfq7AY+zDDICCivuIhUG8C/Xa2yAlONZWqg/Og+kFZBFeMkNVvibxHvLvI+oUP
 0OWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6MkNl3Abs/Zhpl/WspSWXMtoc/Dld+RTVCvPuIDTGmM=;
 b=NjBG4LWvjoUgY+uVvJIir+FGc8gx8KnI4hLBHpNBKlv5ar5ZeXIRm1FLyvn+OGDPZ8
 6lMTsFNa2B2eL0eTrIWMndyJWr10pG0ZRFhPZ65oT+AeVltAdFSNJQLUlUwl8bhQ3498
 Ep2OkVkDT82KnND5K0g0zGqmsrak5IjSjPclpHKGipEn/CzOU9DTNpBhSVtH9UqIs/Oh
 HWkFdA1NQIhotW9VuitJpNZ/jQ1Nw4Mx8fg7pKrk/Qxr/B3Emhq8UI8ZEFa/XKt0wRLf
 MpOLmKsBiUjLB0uEQXtcMbYHnu20xL8mzTih1DBWtTaf7wfJ5UjGf0SN2H9LUOI+C6Oy
 FrLg==
X-Gm-Message-State: APjAAAUOFSaN5J04JFuSyUZgYDBVY7jGsx63WlnimGbaRriL1XhNh+ki
 ElL/eqCyfhEaclmxhopHFXYRHbHx4BTS6COXA5k=
X-Google-Smtp-Source: APXvYqxiY98U5GsKZwWm2SB0qiQjRLVZ82wrOV/Wdh3mKbpLXSJsEM+gtxb9OnxaRmas4wY8IzMGqiRmhQ+9di/zWM8=
X-Received: by 2002:a9d:4c8c:: with SMTP id m12mr12055496otf.312.1581936588572; 
 Mon, 17 Feb 2020 02:49:48 -0800 (PST)
MIME-Version: 1.0
References: <20200214153535.32046-1-cristian.marussi@arm.com>
 <20200214153535.32046-4-cristian.marussi@arm.com>
In-Reply-To: <20200214153535.32046-4-cristian.marussi@arm.com>
From: Viresh Kumar <viresh.kumar@linaro.org>
Date: Mon, 17 Feb 2020 16:19:37 +0530
Message-ID: <CAOh2x==CEWNCQ8YT9nyBDjmWx=jLGEADKm400SafkitEO6OCfA@mail.gmail.com>
Subject: Re: [RFC PATCH v2 03/13] firmware: arm_scmi: Add notifications
 support in transport layer
To: Cristian Marussi <cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_024953_442929_D0249F9C 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [viresh.linux[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Sudeep Holla <sudeep.holla@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, james.quinlan@broadcom.com,
 Jonathan.Cameron@huawei.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 9:07 PM Cristian Marussi
<cristian.marussi@arm.com> wrote:
>
> Add common transport-layer methods to:
>  - fetch a notification instead of a response
>  - clear a pending notification
>
> Add also all the needed support in mailbox/shmem transports.
>
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
>  drivers/firmware/arm_scmi/common.h  |  8 ++++++++
>  drivers/firmware/arm_scmi/mailbox.c | 17 +++++++++++++++++
>  drivers/firmware/arm_scmi/shmem.c   | 15 +++++++++++++++
>  3 files changed, 40 insertions(+)

Reviewed-by: Viresh Kumar <viresh.kumar@linaro.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
