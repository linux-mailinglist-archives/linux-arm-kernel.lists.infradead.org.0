Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F7D11EE8A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 00:31:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXev+R0x1M0tz60RqEToox9+GcHJvz8Vpk2aLer/QhQ=; b=QpEEXzjs/wC5W+
	+lrYLqlU0p57rg8Lcvv0k6GZKx1PfcHaEiwCOwThyMkd1UBSrm912NpAZgTHj6fx2HGli2bVyHpSZ
	XD5+er3hgA0Q7yMhO3k9I0zGyelKHBKfTZCdIl/fvI10SylOni6JDTaXnWRNprJMeCKcp7gLVtxZz
	W9eQZSpq8/NyETNmqHu8eoWgnrtPJbsNSbMxhqXTRxc7VXc+mTw04nCxFueet4wqpK11J/JNPdHWK
	7l2j3+I9dekxdsON0b+T1s7kKLXAmtXYP3GHRcgxT4JCmSS1pdsAUKJLfye2qTV5fn0dS73zCmdQS
	BkBoVyvm4X4MJNoT/zlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifuPG-000474-7Z; Fri, 13 Dec 2019 23:31:34 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifuP3-000463-GB; Fri, 13 Dec 2019 23:31:25 +0000
Received: by mail-oi1-f194.google.com with SMTP id x195so2083519oix.4;
 Fri, 13 Dec 2019 15:31:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=lYYUvtIQs8WyhTXsYcezAWvXZJDnKnplm9KVthaIERg=;
 b=cR2HBylyapb6/uaalSuY+uraItx2ABmsRWq8Jcoy6JP/5WDYcGXkJdY6Uqszy02U+q
 Sva0TybNffYp7jR7o/wJQNo2flCDxDoBW9UWE6VPClu8CrtSl0h+1pGhusLVSzfeAuVs
 Bn3bsztPvdJ/O9LMbNCUlNj+mmLd4UvnS6tslI/lQRUKNOt/pf58FeFyscBqck53fo3j
 eYv7x+sp+8znLJwIaFwyR92Qxd2qaO0b6U+7BYlozgXaHOG3B3BSYzkWu9ProNkc7l6I
 aG1cEVEdCEAYEoIQb6HU7lxjxHxpeUO6CuaqVUJ9wTO5+q1kGdqxnFFIdA604FWc7ES2
 /ZZA==
X-Gm-Message-State: APjAAAXDf/C9Naz4PaVNvsfGxRU1tm1ssYwcAEgfXFnrkWX9zR02iq6s
 a8JdhSYtDKTr4YazvnzWk+ukLaw=
X-Google-Smtp-Source: APXvYqwCTc58Djh9hMNiNnWpcIxHoEkGF4j2hZ7JOin8EDxNpLJNc+jiPrzhwea3x0TrNzvIiQGFJw==
X-Received: by 2002:aca:c493:: with SMTP id u141mr7230624oif.62.1576279880179; 
 Fri, 13 Dec 2019 15:31:20 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n25sm3783019oic.6.2019.12.13.15.31.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 15:31:19 -0800 (PST)
Date: Fri, 13 Dec 2019 17:31:19 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH 14/14] dt-bindings: reset: rtd1295: Add SB2 reset
Message-ID: <20191213233119.GA28838@bogus>
References: <20191202182205.14629-1-afaerber@suse.de>
 <20191202182205.14629-15-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202182205.14629-15-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_153121_535098_75A86F6F 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
 Philipp Zabel <p.zabel@pengutronix.de>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  2 Dec 2019 19:22:04 +0100, =3D?UTF-8?q?Andreas=3D20F=3DC3=3DA4rber=
?=3D wrote:
> Add a constant for reset3 SB2, based on downstream crt_sys_reg.h.
> =

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  include/dt-bindings/reset/realtek,rtd1295.h | 3 +++
>  1 file changed, 3 insertions(+)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
