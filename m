Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0EE18924A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 00:45:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VIHdgTzT/hUcel/fbJ7ZKVQlK6WINxUlhGMUSyepRrE=; b=YB8qqFiN2N6wzE
	zJBAO5oj+M0BNvrywR7Jned6FYKnKzHMWxAa39YqS0Cw2+CDNDlRAafTlC3lNju25P/kL0vJbpsJT
	Nzb4nF4uXVPTR++j3YeIR5ekdwfOYoSllbeJtlxo44AkvJ/4djqMNJ9CNn9KApqYf8jSQcD/ftJPx
	Gdc8lma0IxG7N7qfbRhowbuOXWP4+agYsUd6SDqBHppoeV58ZSHs9P23SlPqqFIe369AEeds5Fu+3
	qm4XbG9dYMjtysBdup1D3CLuQQYYg9FUsJqHnb7SUaMZXTPDlcNHY5O6EO835Y5dsFfbsAG/cZVx3
	G9RU9y7wfxR2l/SnA7Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jELte-0000k9-Hs; Tue, 17 Mar 2020 23:45:18 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jELtU-0000hn-RE
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 23:45:10 +0000
Received: by mail-pl1-x642.google.com with SMTP id w3so10331135plz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 16:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wxH7yekJnveWC6LbF0RVEe9v1RgcLsJWdr4W7PaQbME=;
 b=OERPLSYvbwV8NXU/l55VNZPDr/gruE9KhjIEvVnQC8vNhIQkHthiKWcJBNU1OVn98a
 sB38GTtcgPIIbXVrSumBpGIYha2Y3d7IYaRrfwowrOmXKIMHVqpl6xK/cM4TDpCcGnLN
 N0fxZUKLuK1CuNbA7dc2RoUmREOcArIIpmemNjj2pQhbtvRPN+V9gbh/4dzPiAsizrpP
 OWTe+Qge8nmuMW4vrzrWej6ijkaGA8wIwzbwCblHi4mNzvmz3c0QduJEdYGoMp/Jv15O
 TQClYPlWS1EdcdpMPwjbhmmt8FM3Gy2OH+47mf/QEIYO3rRj7cjdUMnbdhV7wQRCOEfO
 BBgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wxH7yekJnveWC6LbF0RVEe9v1RgcLsJWdr4W7PaQbME=;
 b=AUsprJkUVbtU/nJi50ICMI6er0T67P6Z/G48CeuJuVcRvHJcZP1bc7IcGjCIwGJQ8U
 bqAbDCMypwn/v5RVWKBfIvr2gs5JxBsPnJvcApeQQWWeT5S7yuCYUlXUbNd+p7oG1yLC
 ZupS+fO3AYt/YgSIpxPROV8Dj+nHiSLIL0SxDZQFz5rteAX6mQ9uV1OqnUay5oawrdNv
 KyLLVTDDTMOG7JLG+z4GCLXfjb2/MuVKKxBH0ykLUQf8IKXHfdm3TsQaOgbr1A+yTuT8
 FE2rAclIMoRHgYHiWTJswG0jTs1g4C7puHlymMvaax433mop5R+C27z4SMEMfqgL2u84
 LAbQ==
X-Gm-Message-State: ANhLgQ10n701ZTqrb1FYnjStpGo8QuIn08A1/bcZfVCisBNs2Wfd3rIG
 6qx9je2QrVCruW/T4KBVCM7vBYN7xDX7Mod++EGi6zmP
X-Google-Smtp-Source: ADFU+vtH/S33d22jQGrFLY5ckyY297SoYQvs7rapoC5C1Bh0cn7WOChI2gECG2Oknwh+cuCIF1ORhvOWC8YQewbw4yE=
X-Received: by 2002:a17:90a:d156:: with SMTP id
 t22mr1692573pjw.138.1584488707349; 
 Tue, 17 Mar 2020 16:45:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAG8jQE=TtOVFm=0UdSpqf506G-4zWriZKnm2g2jV7kyTSf-TnA@mail.gmail.com>
In-Reply-To: <CAG8jQE=TtOVFm=0UdSpqf506G-4zWriZKnm2g2jV7kyTSf-TnA@mail.gmail.com>
From: Kirill Timofeev <kt97679@gmail.com>
Date: Tue, 17 Mar 2020 16:44:56 -0700
Message-ID: <CAG8jQEmNCcusJX2QK4OBNjiPJEc8U0amUtZcWCgsWtbx8H8eyA@mail.gmail.com>
Subject: Re: kernel panic on the nvidia tegra tk1 board running nginx
To: linux-arm-kernel@lists.infradead.org, linux-tegra@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_164508_916601_70C99A45 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [kt97679[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kt97679[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: treding@nvidia.com, Ralf Ramsauer <ralf@ramses-pyramidenbau.de>,
 jonathanh@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi folks,

after some trial and error and with the help from Ralf Ramsauer
(thanks a bunch Ralf!) we figured out that removing CONFIG_ARM_LPAE
eliminates kernel panic. Here is the kernel config diff:

kvt@rage ~ $ diff kernel.config.old /usr/src/linux/.config
236d235
< CONFIG_ZONE_DMA=y
240c239
< CONFIG_PGTABLE_LEVELS=3
---
> CONFIG_PGTABLE_LEVELS=2
279d277
< # CONFIG_ARCH_AXXIA is not set
347c345
< CONFIG_ARM_LPAE=y
---
> # CONFIG_ARM_LPAE is not set
411a410
> # CONFIG_VMSPLIT_3G_OPT is not set
434a434
> CONFIG_CPU_SW_DOMAIN_PAN=y
436,437d435
< CONFIG_SYS_SUPPORTS_HUGETLBFS=y
< CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
567d564
< CONFIG_HAVE_RCU_TABLE_FREE=y
702d698
< CONFIG_HAVE_FAST_GUP=y
709d704
< CONFIG_PHYS_ADDR_T_64BIT=y
713d707
< # CONFIG_TRANSPARENT_HUGEPAGE is not set
728d721
< CONFIG_ARCH_HAS_PTE_SPECIAL=y
3369a3363
> # CONFIG_USB_FUSB300 is not set
4436d4429
< # CONFIG_LIBNVDIMM is not set
4537d4529
< # CONFIG_HUGETLBFS is not set
4801a4794
> # CONFIG_CRYPTO_DEV_HIFN_795X is not set
4883d4875
< CONFIG_ARCH_DMA_ADDR_T_64BIT=y
4887,4889d4878
< CONFIG_ARCH_HAS_SYNC_DMA_FOR_DEVICE=y
< CONFIG_ARCH_HAS_SYNC_DMA_FOR_CPU=y
< CONFIG_SWIOTLB=y
kvt@rage ~ $

Thanks,
Kirill.



On Wed, Feb 26, 2020 at 8:34 AM Kirill Timofeev <kt97679@gmail.com> wrote:
>
> I'm sorry if you will see this as a duplicate, resending as a plain
> text message.
>
> Hi folks,
>
> I run home server on the nvidia tegra tk1 using gentoo:
>
> Linux rage 5.5.6-gentoo #1 SMP PREEMPT Tue Feb 25 12:40:17 PST 2020
> armv7l ARMv7 Processor rev 3 (v7l) NVIDIA Tegra SoC (Flattened Device
> Tree) GNU/Linux
>
> This server runs nginx on both 80 and 443. I recently was updating my
> let's encrypt certificate and it failed because plain http was not
> working (while https was working ok):
>
> kvt@joy:~$ curl -s http://a0.twilightparadox.com|hd
> 00000000  89 1f 00 00 02 2e 00 00  00 00 00 00 9d 1f 00 00  |................|
> 00000010  02 2e 00 00 00 00 00 00  aa 1f 00 00 02 2e 00 00  |................|
> 00000020  00 00 00 00 b8 1f 00 00  02 2e 00 00 00           |.............|
> 0000002d
> kvt@joy:~$ curl -s https://a0.twilightparadox.com|hd
> 00000000  3c 68 74 6d 6c 3e 3c 62  6f 64 79 3e 55 6e 64 65  |<html><body>Unde|
> 00000010  72 20 63 6f 6e 73 74 72  75 63 74 69 6f 6e 3c 2f  |r construction</|
> 00000020  62 6f 64 79 3e 3c 2f 68  74 6d 6c 3e 0a           |body></html>.|
> 0000002d
> kvt@joy:~$
>
> I reverted kernel to 4.19.98 and everything worked fine with same
> settings. Locally everything works fine (with latest kernel):
>
> kvt@rage:~$ curl -s 127.0.0.1
> <html><body>Under construction</body></html>
> kvt@rage:~$
>
> The worst thing is that if I do local http call and then do external
> http call I'm getting kernel panic (please see file attached). This
> kernel panic was captured on 5.4.10 but I see same behavior with
> latest 5.5.6.
>
> If I shutdown nginx and run some other http server (e.g. python3 -m
> http.server) everything works fine.
>
> Just in case please find my kernel config attached.
>
> Please let me know if something is wrong with my kernel config or if I
> need to provide any additional information.
>
> Thanks,
> Kirill.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
