Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9391811EDBA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 23:29:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EWyDCLnR/KIVSzXoJzg+qfkboaoyQV3or5ahGMMpKBk=; b=LBodBqdPG+Im8l
	sGx43sXPm7h3yJnIZ5Na8dTAEOaR/Pbmkk/o37Sgg3uyi1Z7MP6uNiG7EJI22KayLmvRIN/nFFWRs
	WAuX1M2pekmIi51FkvMyf1pHmRpVSu4SSGqnLis+IQNwZ2JXQAVKdDBz+0pJlTJr2d0poP+JlWamv
	hEluwj2cQNQ8xM/8HKar67TdGraA6NhnkECNsrPWTEA8D6XBTz6UaTqaMx6crvqSjwCZvdM5o6+t6
	UgdBgHzywvDRZhnVvb9Y0Ie5eYSLKc9UfZH4lR4F7b6oMv/OH37+cTreGzqNU64/GRRgPCSMPCw5T
	BqixCRrVQHr16nvq5UuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iftQt-0006Oe-3u; Fri, 13 Dec 2019 22:29:11 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iftQk-0006Nf-2G; Fri, 13 Dec 2019 22:29:03 +0000
Received: by mail-ot1-f67.google.com with SMTP id i4so903593otr.3;
 Fri, 13 Dec 2019 14:29:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=k6DJOU33upCsVwOlbVPH1O+wtZeZ93iLBWJzQBVEX30=;
 b=t905CPr89rjS/e0gKqq3dnia9oKq2tHr6m3WIHxeaONg3RDdPYJlq9RzeNdraLiDW0
 dM8CNhFlgCturCGD1vqQPRQjVeDaKWk6Ub9lRYajqjZPEJA2/SZA/E9OT9csoNUqcWsN
 C8Z3ViM9zvUu1TfB9y/t0i1BD+ZsfJRD/IJXesIY6nWg1OpNSXMKZ0U3p4Gs3BgWAQIA
 NTccVRRboR0YMGqm9Et3U9RJ9skRCn9ElxkaaZljYHnNgVDVdclkkBWRs76/z3GTUmsL
 lQx2HuCLd9UfQCMxBiNVASLbwDvbe0YlsX/HHwrlPKV4kDVCgNDFCyNrd1KUjhxcVKx4
 PpVw==
X-Gm-Message-State: APjAAAXa0/xyTveFSNvigLFeFBPaj4njP+y7aV5UcgyH0yvwc+HwkV9n
 F3+edll9DI4219GRk187rg==
X-Google-Smtp-Source: APXvYqy4E7eJGU7hZLAl6o9sR/e9LBUygUfvXqQC5vCF8XGIxUdSSAU0iQU4uChZ13ru2IYjDxLo2A==
X-Received: by 2002:a9d:74d8:: with SMTP id a24mr18149054otl.100.1576276141090; 
 Fri, 13 Dec 2019 14:29:01 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x15sm3807109otq.30.2019.12.13.14.29.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 14:29:00 -0800 (PST)
Date: Fri, 13 Dec 2019 16:29:00 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH v2 8/9] dt-bindings: arm: realtek: Add Realtek Lion Skin
 EVB
Message-ID: <20191213222900.GA7876@bogus>
References: <20191202102910.26916-1-afaerber@suse.de>
 <20191202102910.26916-9-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202102910.26916-9-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_142902_109118_1A92B762 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  2 Dec 2019 11:29:09 +0100, =3D?UTF-8?q?Andreas=3D20F=3DC3=3DA4rber=
?=3D wrote:
> Define a compatible string for Realtek RTD1395 Lion Skin eval board.
> =

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  v2: New
>  =

>  Documentation/devicetree/bindings/arm/realtek.yaml | 1 +
>  1 file changed, 1 insertion(+)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
