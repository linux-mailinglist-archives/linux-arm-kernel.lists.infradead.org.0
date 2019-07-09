Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAF662DE5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 04:09:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OncDgsJInNnMJBn4Dh8eAHf5eU+5eBMlI/geCSfagdc=; b=gnbbp69ODRtwm/
	+9CtfkPp4aKfpnb0+C7U6GLbIjVDINtAqWIs1W78W1cfeDuPm9gVe4spxs5RrLnU+s60VpDoLOeRZ
	PMmPFgGBz3NWiBRvBd48XKIc+0U3Ecfyn3wZi/w0lSFLQSY3l1KS1SYq2Giu3P4LbHf/xV0MaHrjs
	FjwebL5CyHRE3xwJCQ8DBsYCpP62roiZmfx7o2Jch9EMMym/Y9jfbWd+bqNZ0wnnYiLRsz2UAj0ma
	6x1ty4KJ8uvyrMlWj8LvQBFbOM+kYlA2Yj5wSOndTdt1EmSolqCdfwitWd0ew/xP6gCusCblUfp0n
	d+M1G/0Ly123D/4SbgiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkfYw-0000E5-DJ; Tue, 09 Jul 2019 02:08:58 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkfYe-0000CW-Pn
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 02:08:42 +0000
Received: by mail-io1-f68.google.com with SMTP id m24so30309357ioo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 19:08:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=wW02jFZSaX8A4fbGCTcNYrXs8wdG93m32ZsgP4TKJAY=;
 b=pWuKCUGKh49qECIRWyHvI+9itoNrTdEKatTrxM2lVov823f+XiS3UFOwAgqkfELbXM
 Kg6Ue7DaQiWRHRq+8v8muHma89mh44GrwAKTTjs08NwgcQlVxq0wZM7jp7cMkDRX91VC
 URGUWE3RGMb15J3wNNZlDsoNNNyyrBMzP1E50DW5LwIjl0U4ffBpby6k69/sLbMcBnwQ
 yArz2w5PwJL/PNzJK0WApo9gN2qPx7E33aIyMkOPqhNiiXq2oOKOshOFFms8Wl+2tcgj
 wIU06VyVRlANZYyE/CFZ9lOToSzU5Vw0kjfshr64EBxr79oPfE+JZ83NsQfXFMgW+dd0
 cpFA==
X-Gm-Message-State: APjAAAVgpPbdPlfARn7Mq9+bSD/SioporURdK0ZsH3OJUjKsUAulZqFa
 4iHmiTLbxpIZYtyY0TtbpQ==
X-Google-Smtp-Source: APXvYqxcQQE5qQSk7Mm64m/hLZNPpvvL4cOTHW4gDvJJAiCHDSQbpnBAXAreRsYB2rcKBCJdwN/+Jg==
X-Received: by 2002:a5d:91d7:: with SMTP id k23mr2335199ior.163.1562638120102; 
 Mon, 08 Jul 2019 19:08:40 -0700 (PDT)
Received: from localhost ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id k2sm15537532iom.50.2019.07.08.19.08.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 19:08:39 -0700 (PDT)
Date: Mon, 8 Jul 2019 20:08:38 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v5 10/13] dt-bindings: media: sunxi-ir: Add H6 compatible
Message-ID: <20190709020838.GA23382@bogus>
References: <20190607231100.5894-1-peron.clem@gmail.com>
 <20190607231100.5894-11-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607231100.5894-11-peron.clem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_190840_840490_626BBF1D 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sean Young <sean@mess.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>,
 =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat,  8 Jun 2019 01:10:57 +0200, =3D?UTF-8?q?Cl=3DC3=3DA9ment=3D20P=3DC3=
=3DA9ron?=3D wrote:
> There are some minor differences between A31 or A64 with H6 IR peripheral.
> =

> But A31 IR driver is compatible with H6.
> =

> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> Acked-by: Sean Young <sean@mess.org>
> ---
>  Documentation/devicetree/bindings/media/sunxi-ir.txt | 1 +
>  1 file changed, 1 insertion(+)
> =


Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
