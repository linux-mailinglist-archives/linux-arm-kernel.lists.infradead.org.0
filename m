Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73EFD1F753A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 10:23:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSw4EdWP2OjNyapfdMsOfl28AUqZYsjui3wfCD7CDlg=; b=sUlAMskpzHalAz
	rIYobvW20DskwEHNltmUYC3OHxKFTg8k6/HsSHgxgAhLyh2ywvsMnPF/wUk4NQEnBm43IxYaIaFgk
	H8SyW2VuWb3LPGh3gB6PHreRv5I89vafU1H9y41D7b/bQQrKVk06zMBXWz2rSCmh4NPpEj4GT6wcK
	50HHjFb8/fZKiDFc/AulXeaeElSDW+RV93lSOlsjSUvyjAn0vc1NJxVQO5627BGoupifXDdZrclHL
	wGBQHlX+Kuk2kLGCSBZpdNPwArzcG5HL78bzOJPCCp/WZA7xBT/SA5HYBoKNoPBIqT2xhGHlktnEy
	U9T8a1+d5asnvk9s4QVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjexd-0008FV-LX; Fri, 12 Jun 2020 08:22:49 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjexT-0008F1-Tc
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 08:22:41 +0000
Received: from mail-qv1-f51.google.com ([209.85.219.51]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MVMqF-1jJZV71WOV-00SKkw for <linux-arm-kernel@lists.infradead.org>; Fri,
 12 Jun 2020 10:22:34 +0200
Received: by mail-qv1-f51.google.com with SMTP id cv17so3977191qvb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 01:22:34 -0700 (PDT)
X-Gm-Message-State: AOAM533RRVx04mtVlXj+74YIgqWpuLBMlbBHiX38EoO4E/UDnxJFbihq
 XODFQ4hsFgN7Q50tJhtTEXRCFtM/hkP7gEMH6ok=
X-Google-Smtp-Source: ABdhPJz/lMnDXiwziRbWlvatNoGW+O3d92fOxk0Q3TsPTXzjHsjMD53lQmGyTK/n/lhQiPHFnQoyINWojRzXDeUTDMY=
X-Received: by 2002:a05:6214:1842:: with SMTP id
 d2mr11416831qvy.197.1591950153207; 
 Fri, 12 Jun 2020 01:22:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
 <20200611134914.765827-2-gregory.clement@bootlin.com>
In-Reply-To: <20200611134914.765827-2-gregory.clement@bootlin.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 12 Jun 2020 10:22:17 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0Rc6qd0Cb2yMNupbCP2NWRQAsEKtvEr5sZV4ANw6xfNQ@mail.gmail.com>
Message-ID: <CAK8P3a0Rc6qd0Cb2yMNupbCP2NWRQAsEKtvEr5sZV4ANw6xfNQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] ARM: Use PAGE_SIZE for ELF_EXEC_PAGESIZE
To: Gregory CLEMENT <gregory.clement@bootlin.com>
X-Provags-ID: V03:K1:txd8CrD7mq/4N6mvK3Wu+3ts1tlUve0099HnfU3uHu2UE7WGAZb
 GxVV+rlfC4/R/+C6ccgy9Trirb/Fm5UW9waVvptXnjVkTp+OEqh0hLHzqiYPCygn1dBtsJE
 uaaztaYONwxPChQYUPH+WyvIN8kqE3ZbGGvvV7Sp3Q+E+oblHFZ6O2plOjy/AnBT3Crl57S
 n+Y8/9kOz66wIfzlVhGbQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2A1zzUvBuV0=:yFxjYs452pEVJXUiQwJUcz
 DjwOrLECPQJbnEleklWfL2T60CA90fqpjcQpVLF+OIhu9Qnf6gQV9IfOxBmBG3ewCbCJS0MSf
 /4qPWDQaGWLNV/IMn9oUlpWjwdVSoGpLfB+zL4JqU/fQoP+Bm8Wkkg9vigbHRzAZobaX0rGI7
 nSfpJpJ7qeBmnFRyGntmFO2bB80LHkzGfxoQoO5EnelaE7HTLe8DLb3IH/b5X5Y6KV9/Lg0Vy
 PYiUn4YrS3TT+1kawJjQ+9T1gvKm65Vw4u8USLWJFx/ibesyMVzuf6M84TjTpCz10TGXCYnCO
 sCXqsfGDkCB/ax93VQkWb5OiSDqTbNOMeyX+GZpjbFO7k/C1Z1d1/5I1ytn0ItVyeEQRz7kFx
 3UoNumxw4vINBGHCuCKu86Fr/boOG/KHpcCF717gOFoYz2/qQAamjn7/S1VuyR7tvLpKLwksr
 fQkZzABfgygcbAGlf9wwb3hgxiYLkyFXWlIso26n+9i+AV2RBH/1JqicKfzdv9By9JHpDQYL2
 X/L4AMuhiIvA3/JnMXq3EjMhMBR+NpLxUOput6OPo72mycnHRJ0lu3qvTqyT7Ud3kzOx7fT2d
 KRfYiiW3UXWaUPzXXkJ4q2G3vL2QR/XIzqGkTpt5qTeV+l0iH6+K4Ti8b6yvtHuIG6SuGGyPu
 lM8xYRpqYbDTuitswHJ/EJMLK5LkbXV314qtCC43pse2VrJhQem9j2MZ17QoKbmjvDT0krPKE
 L6V1JslQki0cchSnGRtm6bc6wy3zBU6uW7tdKHiyKKrW/yxau61R6JR+T0GxH/etMgznA3XlQ
 h7+xbvC+YWZ+39Wqz0UoS7Qgp72mSfwmlXgw527kq6Bg9eAnoE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_012240_247892_A4C86119 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 3:49 PM Gregory CLEMENT
<gregory.clement@bootlin.com> wrote:
>
> Currently ELF_EXEC_PAGESIZE is 4096 which is also the page size. In
> order to be able to use other size of page than 4K, use PAGE_SIZE
> instead of the hardcoded value.
>
> The use of PAGE_SIZE will be also aligned with what we find in other
> architectures such as arm64.
>
> This is inspired from fa0ca2726ea9 ("DSMP 64K support") and
> 4ef803e12baf ("mmu: large-page: Added support for multiple kernel page
> sizes") from
> https://github.com/MarvellEmbeddedProcessors/linux-marvell.git
>
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>

IIRC using page sizes above 16KB here also requires using a
non-ancient linker in user space that places sections on
ELF_EXEC_PAGESIZE boundaries, right?

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
