Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 085801DCDFD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 15:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hDZvlxWc8B0XG5MwI0eFNhvUDUrZFz3ivZ0roNoKy7M=; b=noh2wnKlN/Jk84
	q235nRGyY/48To6pdte09MbdOEPXEq7ibyPiX8GoR/iDX7IXMBLQlI/SPzAHuULsP0KF9j4t/3WKB
	FrNuwxDf8XXVZjFcoPgfDnOBSG42hdTQy/JfCSZEXCInkvAD6OOWBgylKGsDN3P3e6QgTMh+Ckik5
	AvaZ0PNnln9DPAGhBN59k27cCLGuSckSMJpiYTN6Ih9TJ1EjSpqx5+Y/mkZaiFEQMLVPWJceIYFwc
	U9cUi4Pa0R0YmMPz2q2OtHUo3WB/f09JqBxN9N+YO1AHIvg+TIGpX3wt0Mi73dh/C9XdtG+pCJsBx
	4MVQXtUmKIotZn+9VBMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblGg-00010H-3L; Thu, 21 May 2020 13:29:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblGL-0000xk-QG; Thu, 21 May 2020 13:29:32 +0000
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
 [209.85.210.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6951620825;
 Thu, 21 May 2020 13:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590067769;
 bh=+Vul0RFPdVZB0vQS1vT3FMvkdRIwInL6j//NVC1qhzU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=RnR7LQDq/x9Ij28pJbJmM6lvZTtP5kEYvMwF8rieOVu/rNm+FHySqrnsIpxMZWBHX
 GYOoUmXROau+GrCoaKOJ+QGWRx9oyNLmHaajGax+M/19uf94LxIcXmO61c4AKPllos
 jEwGPIwlV5CxQgeEAMFlDM2V7QSfNpK5DrC5F4To=
Received: by mail-ot1-f44.google.com with SMTP id b18so5504096oti.1;
 Thu, 21 May 2020 06:29:29 -0700 (PDT)
X-Gm-Message-State: AOAM532cIPQBMmAL85oM8ANrtK82kTsdGZ9Uqu60GQDhMoYjic8gp3W8
 LVYuSiClxGHrhbdEgWOccxq96MAt1vb14QOg2w==
X-Google-Smtp-Source: ABdhPJwr4rrTCR/Idttk5JgrSALx4SScRiwigbIhOO/HiSRN+KNXysfUOLEjfhqUUsjN5MDORr7rgIYX7slyHD18ORM=
X-Received: by 2002:a9d:1441:: with SMTP id h59mr7152607oth.192.1590067768679; 
 Thu, 21 May 2020 06:29:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200521093805.64398-1-chenzhou10@huawei.com>
 <20200521093805.64398-6-chenzhou10@huawei.com>
In-Reply-To: <20200521093805.64398-6-chenzhou10@huawei.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 21 May 2020 07:29:17 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+EV02YBqEGoJrsJW8Y+g_GkB_LkTwWCxNCb3F+8MSdyw@mail.gmail.com>
Message-ID: <CAL_Jsq+EV02YBqEGoJrsJW8Y+g_GkB_LkTwWCxNCb3F+8MSdyw@mail.gmail.com>
Subject: Re: [PATCH v8 5/5] dt-bindings: chosen: Document linux,
 low-memory-range for arm64 kdump
To: Chen Zhou <chenzhou10@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_062929_877272_37E5B351 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Simon Horman <horms@verge.net.au>, John.p.donnelly@oracle.com,
 Baoquan He <bhe@redhat.com>, Will Deacon <will@kernel.org>,
 devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>, kexec@lists.infradead.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Hanjun Guo <guohanjun@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 pkushwaha@marvell.com, dyoung@redhat.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 3:35 AM Chen Zhou <chenzhou10@huawei.com> wrote:
>
> Add documentation for DT property used by arm64 kdump:
> linux,low-memory-range.
> "linux,low-memory-range" is an another memory region used for crash
> dump kernel devices.
>
> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
> ---
>  Documentation/devicetree/bindings/chosen.txt | 25 ++++++++++++++++++++
>  1 file changed, 25 insertions(+)

chosen is now a schema documented here[1].

> diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
> index 45e79172a646..bfe6fb6976e6 100644
> --- a/Documentation/devicetree/bindings/chosen.txt
> +++ b/Documentation/devicetree/bindings/chosen.txt
> @@ -103,6 +103,31 @@ While this property does not represent a real hardware, the address
>  and the size are expressed in #address-cells and #size-cells,
>  respectively, of the root node.
>
> +linux,low-memory-range
> +----------------------
> +This property (arm64 only) holds a base address and size, describing a
> +limited region below 4G. Similar to "linux,usable-memory-range", it is
> +an another memory range which may be considered available for use by the
> +kernel.

Why can't you just add a range to "linux,usable-memory-range"? It
shouldn't be hard to figure out which part is below 4G.

Rob

[1] https://github.com/devicetree-org/dt-schema/blob/master/schemas/chosen.yaml

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
