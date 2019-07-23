Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B82F7203A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 21:49:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzGYEb//fINymYJQ4aGdf7wbGuLu5f4Z8jMTVPe8qCI=; b=WGp5YkSflHjWCw
	/eDQ86nmECUhJWKcw7XGDn2dIQxxoy+rxl+7ZW+e2YZ0lf1EmQH1uOj+Ymz65bK5ZeF+DgJcf0FuB
	uILQqK6Mkasmfrgy4V4lcS9/wbRh3lEKZc/abCJoT3aFtJhP3ZHnsqR7VBmZ+IRpVAhaMuzZFZLDD
	eABAzcWy0D1Gu58uv8lEO/5+hwsByq0vpmtKmSw2MB9JXG7HEABwUfYowXp/QauRVQEV1HJZv3qY3
	l2X6mIlL15ONsc3lfjzey4wLkIkW+RCLDIsb018lKejjQsIehg7oFbeOmj7KgZQxoCd7mlcorPZU+
	T7xKG05OagxuutOJsR8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq0mX-0005C5-Lg; Tue, 23 Jul 2019 19:49:05 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq0mE-0005AR-OB; Tue, 23 Jul 2019 19:48:48 +0000
Received: by mail-ot1-x343.google.com with SMTP id r6so45321070oti.3;
 Tue, 23 Jul 2019 12:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3y2Rp7SMI3XNaqXS79DCDXZRuJ6DjUasigpS5O8UtzA=;
 b=oAhMeVMIqxcslXOZp+fN01DYk7ZSL+gRIe91aqObFv1d0shZNBp7uGvSNjhf93u4K4
 nhHo47WlvlFMwl49hCFcLmr3kXP6VdNeNoOTfbxPS7oFs1Ym4Nwz5foL7NX1bQyZPPLS
 ZONFhen8K/symnRpQCMk1pOaxhQipkn1QtGp9q5alww8mNRwv7MRMDzwbK7MJ8bCsgRe
 UHl3JlirEe0ktiJxe/6KGZlaDkB1nc4lodOFWB2WVZRPdfvgQrgTJ7s+a6nOiyKTmefb
 NK7FAob1/ThIiM+GobuZB4q9l/7qmyFBSUyY56TsgtYs1OnDl7OUN4jUrb2lYnXiaIel
 HbfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3y2Rp7SMI3XNaqXS79DCDXZRuJ6DjUasigpS5O8UtzA=;
 b=d0SPGQ87zYYFp/PRn3V5uqTeKuZFBy6oNgmG0VVoSJnAsNPVoDHEFID93xo40QJkyU
 w44oF34aLNAKERV7o3cBM7p1HWDfUCfz5Dd7JDXFd0wn7lt+Qr+ZBrD+ztqf0f4PW3ZB
 nXnYFU/0wlBhoPWImf6jInZfYhtC+TizTt0+61yiXVlvvhvix1B+C6tBtBzD8RFcKQTu
 +z7TuxhJVARazJ+KpyRrKUfxc6YLStKp69BoTx78kXLLmk7ZA5v1wPOtbWflqigCShAP
 HOfiTyaWa9SdVzGNUTrK30DFmHIf22NmUaYTrUxgstKKrqMWGZrcqOlKvNsV/QRO+Sav
 k3LA==
X-Gm-Message-State: APjAAAWmKxxxdtw+wlFqUOlQhH/7ZFTFXM4pawAUSuw8rPbGZtepXo/S
 Y/KpVOFb48hUkxbc1NLFye/czY0p7TkBIzDjuKs=
X-Google-Smtp-Source: APXvYqw/uKPTduoxeheqy1d3LXpDotwVX18KQYuRpL6MWLDg3MwWHQz/jKriVKqFVvSKsjH4LkYRoVJs7LfrUSTwnKU=
X-Received: by 2002:a9d:23ca:: with SMTP id t68mr57217603otb.98.1563911325066; 
 Tue, 23 Jul 2019 12:48:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190719192954.26481-1-xruppen@gmail.com>
In-Reply-To: <20190719192954.26481-1-xruppen@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 23 Jul 2019 21:48:33 +0200
Message-ID: <CAFBinCDRHbsDPe58qCfOzM_mZ+tmZpg2=dbfWcHntCn4xajOdw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: meson: odroid-n2: keep SD card regulator
 always on
To: Xavier Ruppen <xruppen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_124846_814190_56DA7A5A 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: khilman@baylibre.com, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 19, 2019 at 9:29 PM Xavier Ruppen <xruppen@gmail.com> wrote:
>
> When powering off the Odroid N2, the tflash_vdd regulator is
> automatically turned off by the kernel. This is a problem
> when issuing the "reboot" command while using an SD card.
> The boot ROM does not power this regulator back on, blocking
> the reboot process at the boot ROM stage, preventing the
> SD card from being detected.
>
> Adding the "regulator-always-on" property fixes the problem.
>
> Signed-off-by: Xavier Ruppen <xruppen@gmail.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

> ---
>
> Here is what the boot ROM output looks like without this patch:
>
>     [root@alarm ~]# reboot
>     [...]
>     [   24.275860] shutdown[1]: All loop devices detached.
>     [   24.278864] shutdown[1]: Detaching DM devices.
>     [   24.287105] kvm: exiting hardware virtualization
>     [   24.318776] reboot: Restarting system
>     bl31 reboot reason: 0xd
>     bl31 reboot reason: 0x0
>     system cmd  1.
>     G12B:BL:6e7c85:7898ac;FEAT:E0F83180:2000;POC:F;RCY:0;
>     EMMC:800;NAND:81;SD?:0;SD:400;USB:8;LOOP:1;EMMC:800;
>     NAND:81;SD?:0;SD:400;USB:8;LOOP:2;EMMC:800;NAND:81;
>     SD?:0;SD:400;USB:8;LOOP:3; [...]
>
> Other people can be seen having this problem on the odroid
> forum [1].
thank you for submitting this patch (and not keeping it to yourself)!

> The cause of the problem was found by Martin Blumenstingl
> on #linux-amlogic. We may want to add his Suggested-by tag
> if he agrees.
yes, if you re-send this patch to address Neil's comment then feel
free to add my Reviewed-by as well as a Suggested-by


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
