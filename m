Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EF6100DBE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 22:32:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5kKA3gVxt2XoH+qFS8JphydcjwITtxFw+XF41D4P3YY=; b=ikvyHohv/TZhhE
	g/vGXWkLYzK2th6e3DFTpo4mDjRtKL/uWqKOpSAbq9jg50o2m6U7QsIWTr1jTkgIMNPFiupzdYTq/
	ZfUyHPV2JR0nCmIwZispZ2tQQjwCx0KlokfS1+ftNxs1I7DcqscpIsrI/BZpyLq3RKb6VhrnH/C7D
	Jj7FrGaU8iD7jtC4WjEVHqnv5Y0Ur54bN7EbaaAgHa7zeULFbYTUKaHuqOU/OjNyItafFS9AehYq1
	jnr5IdiD7ncMolLGbUclw0DPJEYNhFYsd0DaFifv9+HjAfU3+GXZ94CE6TxT4x8/bgc6iD45HLesG
	SofNT6d1mNEnmtSQAoBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWodA-0005GT-PK; Mon, 18 Nov 2019 21:32:20 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWocv-0005FJ-Uf; Mon, 18 Nov 2019 21:32:09 +0000
Received: by mail-ot1-f66.google.com with SMTP id n23so15865848otr.13;
 Mon, 18 Nov 2019 13:32:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qqYcsKRMT/Ofwu9p9gWIeiSVzyiJC1qQZAiQjgxWaa0=;
 b=MxTfCQLc04+cshY1L3vyjQ/pOoBxEAiieWqwIzbyOZ8w3TtwqJ7DJoJW18u5YPCk09
 eDw0INKq5Nnl0klsKFVT59Z/IXyFusWfsxTd7BLMtHlN6U42FdwilsckvAwXlecN/Phf
 MEFc+t4CLh3OCReQOsOBmAdZ+9cu152z+hsxHWbevtmf1qw/+FEmQuh2IUwDKp/oIWPf
 +rPMDkY35GO+9ltNMKEa02XGw8MKhshA/ZlfozzNOZv40kWZ0Sp6Sp01Oan+Rpb5ST8o
 n0pkeLcNhtZ1IKwyQf851ItkE11zt9GeXDoe2MiJugACRdPmGeZpGa1izuEuTi/+KHgy
 fGiw==
X-Gm-Message-State: APjAAAV8cMiv8hU18P2EB5XUGaP+IdBZwVbM/qA2uwssxg2E2Sf6WJba
 Qx9QNa7s1cNhKKfG19N7ig==
X-Google-Smtp-Source: APXvYqy5qVSVt+xh2wIzi24hrKLRfXyk0CYioZ9gFcoETioNwzK7Xkbr7IosaBgrxrtdWzERUqCG4w==
X-Received: by 2002:a05:6830:50:: with SMTP id
 d16mr1039391otp.132.1574112722863; 
 Mon, 18 Nov 2019 13:32:02 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p3sm6570097oti.22.2019.11.18.13.32.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 13:32:02 -0800 (PST)
Date: Mon, 18 Nov 2019 15:32:01 -0600
From: Rob Herring <robh@kernel.org>
To: Ming-Fan Chen <ming-fan.chen@mediatek.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: mediatek: Add binding for MT6779 SMI
Message-ID: <20191118213201.GA27040@bogus>
References: <1573616362-2557-1-git-send-email-ming-fan.chen@mediatek.com>
 <1573616362-2557-2-git-send-email-ming-fan.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573616362-2557-2-git-send-email-ming-fan.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_133205_987885_08CA5EEB 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Joerg Roedel <jroedel@suse.de>,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Ming-Fan Chen <ming-fan.chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 Nov 2019 11:39:21 +0800, Ming-Fan Chen wrote:
> This patch add description for MT6779 SMI.
> 
> Signed-off-by: Ming-Fan Chen <ming-fan.chen@mediatek.com>
> ---
>  .../memory-controllers/mediatek,smi-common.txt     |    3 ++-
>  .../memory-controllers/mediatek,smi-larb.txt       |    3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
