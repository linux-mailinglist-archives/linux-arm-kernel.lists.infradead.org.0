Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A44FC1A9CD8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fiI0p06aGvqEzMYDBaVwGI6t6QiJsr7yT/nO6syZrj4=; b=RnAlJRcBNSRtM6
	LTji2+70t9TgdfWmGr+giBsRsQ2vHPVlY2efXlLKgozCabcud48x9L2avggVrglTedfD2suIwVwpN
	qckNFFlPC0u+t1GkxfxOow1S1vKutbJalZOC3UZZ8D+9ZpNJ5anrSgFZV0hglqODVlnEFbB4sVPbq
	ym+hwFYioj1/UdxqemBeS/h8eZkF43EA2rM4Izt7aoPGSQZJE3K82dFQiqUc0/ToWBPimslgj+KHJ
	vRy9tOZfvmlqf8Euk3bpqqO94gccstSbIYo8yXZX5/doPzpd6Zx/Cc6H7Z5+x6yrXF//IyrzVaI/g
	Z1tjFuBOyzAkeg04FZ+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgOT-000499-1O; Wed, 15 Apr 2020 11:39:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgNL-00035O-GT
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 11:38:41 +0000
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 13E3820768
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 11:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586950718;
 bh=R43hO9Q3If9QrtnZ5K9TcR/a0ZvrCDhZjgGwgzT0xFE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=E5odArf/RDc2lUAWXYieDSICfp9q8nBXEpH8oGXMbl511ftW6vzpHvHktcBE2iKiC
 CKixYDKgMb9QlA1aORiC5Eu+aRqxfTt+PKHC5/btAAOBgUVlxZbVPCpfvrqokmXOdZ
 CbKDC6mtkLWOW1EL3z3pC7fdPh/RNVXyWZm30v4k=
Received: by mail-lf1-f53.google.com with SMTP id x23so2381444lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 04:38:37 -0700 (PDT)
X-Gm-Message-State: AGi0PuZ1RsWdx3t0pAT/Co0qwT7dLhTIqsNeZmsGid+nz86Nn4YpLpPy
 lWSuSq/58MA3yasQ8qeFld0lsD8+Xw/Gpprwk6s=
X-Google-Smtp-Source: APiQypI+VI3dpF2YbI7yVr/aHwnSBVAysHwaY+SScdUs4Jyyh+GbDgIy/bRBbEhJiawYLq4RWaZKVJOwvX1RTOgkOWY=
X-Received: by 2002:a19:ae16:: with SMTP id f22mr2914229lfc.2.1586950716265;
 Wed, 15 Apr 2020 04:38:36 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1586939718.git.hns@goldelico.com>
 <004611c9660943759b635a87484932869927cf74.1586939718.git.hns@goldelico.com>
In-Reply-To: <004611c9660943759b635a87484932869927cf74.1586939718.git.hns@goldelico.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 15 Apr 2020 13:38:25 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdEkWniffmGZmf=S6E5UxWTdVGXnycqTFftXwo_45rz3w@mail.gmail.com>
Message-ID: <CAJKOXPdEkWniffmGZmf=S6E5UxWTdVGXnycqTFftXwo_45rz3w@mail.gmail.com>
Subject: Re: [PATCH v6 07/12] ARM: DTS: omap5: add sgx gpu child node
To: "H. Nikolaus Schaller" <hns@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_043839_644386_FF0258B3 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-omap@vger.kernel.org, Paul Burton <paulburton@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 letux-kernel@openphoenux.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Daniel Vetter <daniel@ffwll.ch>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 at 10:36, H. Nikolaus Schaller <hns@goldelico.com> wrote:
>
> and add interrupt.
>
> Tested-by: H. Nikolaus Schaller <hns@goldelico.com> # Pyra-Handheld.

Don't add your own Tested-by tags. These are implied by authorship,
otherwise all patches people make should have such tag.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
