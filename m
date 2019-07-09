Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8170C639DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 19:03:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1IQMw625N6yX7qRGEKwjl7W6TlRT4IUz+4ijnWhJvuY=; b=psc73FX67tJD4x
	Ao95eZzmMyLQP+9hj0IPmfwzufsI9MWzqXL7rx+tYSjlovhZf/in40/M6oYEnI3OgmO5Bo1VOhdXS
	Eq6A7rJK+KdEknfcvNIkWmhVy1poyVsH5OKO1WKeb4DjpOGArDjYTr44/zd0GiCVr/Qhigg/Vjnn0
	d6Y6ZcX59B5lSd+FkC5cA7N6jTM4f5yLIEWWn8dlVlFH0vKHkZ6FvTdkGM84cMAhx3LPIiavVkyyp
	YdHf72Tm7n1Ug33Dfs4cgiE0M3o3bhBh4F3xD9L1l6lb7KvesaAv/pUvV1vRxQKHkEyDThze5dYWG
	hvik43Lskl6CD+w4pGKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hktWq-0003CF-Uv; Tue, 09 Jul 2019 17:03:45 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hktWh-0003Br-PE
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 17:03:37 +0000
Received: by mail-io1-f68.google.com with SMTP id u19so44684719ior.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 10:03:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=0PRQV1h01VSnXO7p1jiGRaa3LHaTGuGr/hi69YvxKb8=;
 b=UHHB0hatlzywZGx0of7Ps/oDk91LyOkfdA+AkP91xVEtMS8QW95KT1JszLSqa3X6A6
 YMsEOx4Hf256mFhlKSB+JoN6HuGE3U7fd3rvUwCnvlqnQk8ZT99CQR0zp8h4sIyORh34
 HgAUK+cjniZ6Dt7MENp9WdIFY7WAyGxoenLsRfMoIOxgQhEBJBCkX5ahnGWs3D1GqZdS
 vtVg5TxSPpD22rGDPoUrZW5NZBoGmUvhdXzspUzqShNqxcNypw9ZjDK9eP14mIyCT1s7
 20uUaGSI92cPwGvnCxf3CeLucYSw9uQmcDM+5KRXNyvesl/A4PkVY/T9NihHze10Ba7n
 TnqA==
X-Gm-Message-State: APjAAAU2RiKJidaX5wJvxcK9YLUsPt7/UXd5tiFbRRWsOzhZNgsuUlAo
 qeoh1Vcau5kb52figW12mQ==
X-Google-Smtp-Source: APXvYqzAi/TybgN9SP/8YqcbDSuKeU8Tx9sFm9tzFu1cwz6VaHeNAfpnmFTlnxxrzFQCmQLyus9IJg==
X-Received: by 2002:a02:13c3:: with SMTP id 186mr28606534jaz.30.1562691815051; 
 Tue, 09 Jul 2019 10:03:35 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id b20sm16803274ios.44.2019.07.09.10.03.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 10:03:34 -0700 (PDT)
Date: Tue, 9 Jul 2019 11:03:32 -0600
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: Convert RDA Micro board/soc bindings
 to json-schema
Message-ID: <20190709170332.GA14545@bogus>
References: <20190618212229.32302-4-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618212229.32302-4-robh@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_100335_819005_9CDC6F15 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 03:22:28PM -0600, Rob Herring wrote:
> Convert RDA Micro SoC bindings to DT schema format using json-schema.
> =

> Cc: "Andreas F=E4rber" <afaerber@suse.de>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> Andreas, Update the license on this one too to dual licensed if you =

> want.

Ping.

> =

>  Documentation/devicetree/bindings/arm/rda.txt | 17 ----------------
>  .../devicetree/bindings/arm/rda.yaml          | 20 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 21 insertions(+), 18 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/rda.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/rda.yaml

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
