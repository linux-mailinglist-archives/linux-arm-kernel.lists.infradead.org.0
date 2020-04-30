Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B04F01C0920
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 23:24:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9s2ZegiKpMs72Us6LcTgOA3UgD13nKC43FKEtkc6Wo=; b=ntC2wr8JguFxTj
	8ZUHjftNWI8pvDQRPzUAOnVglLUQhmzMMEBEe5+ShRO/3UlmkdwFlhjs97jtaOwaDz4o7rY1MOgYp
	OQEU3jtcWYjgUcjWfgTqFx4spGK1SZvexXd1tAkxLNv6QQCMtiVb7KGsOpWj8gNfAwPmS8RcdF9et
	6wnLV5na+piTqRFmvOUSfTH6QCZgnXPO3jJhSqwhXtpxs8yKiojloRi2kKOvDrxFuI50scXUGLXH/
	LDNOkyQxAa/n0Lz48c98fFbam36X6Fwqr+euwvrqWhXrShbWLf7fadI3kxCtlyrITcXNdZZ84NrQa
	qKuveBjAud7j6lSVWwyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUGfZ-0006Da-BI; Thu, 30 Apr 2020 21:24:33 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUGfN-0006CG-IV; Thu, 30 Apr 2020 21:24:22 +0000
Received: by mail-wr1-x443.google.com with SMTP id k1so9084285wrx.4;
 Thu, 30 Apr 2020 14:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PyH2w2vQ2/ttTCu1gA9N4CJ/i81Ue6gR/CAS7sMwVvo=;
 b=IoQmpO3GmJlAH/aoZ8tWtIO9clTTbyYXCHpE2M77/yadwdU0QcXochTT58EyZDHPfo
 6Ky3UClDTBEDZlamB61fgp8qZ8OCa76ZhRK7PCf1ZYSRN8zSKzqPhG8h0VPaGqZTXUL2
 yje20nDGT3vNOE0lzNFrLnkDlkIS/Lxep7a8e+fkTXlTHDWUjttPDuIgBnL7f3PWCqp9
 avT6HHDbqVptfl4xXRqNLgAk6IcykEH///zA92BxQTXvxA7iRPE7W92qEzXE0sOvvLvp
 0jXXGlrGL1ihnwZ2ONmbCaOgoV2X5rbGStpJWh0J+zX62jGXhLc2ZMzx9VtOUdIoz0VQ
 g4Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PyH2w2vQ2/ttTCu1gA9N4CJ/i81Ue6gR/CAS7sMwVvo=;
 b=kUxLfWJkRPg8eEmX2oZiwvzvqR//SjUrQz79/yn/j7uum4LB+IhmbKBYnvWv7znTEP
 53DQ2vbmBC3UN4vGDe9WcxcQ5KtiZ6xnpRm5s9SdQ9QFfvmyoZqauDul5ZZj9N41qTbG
 EXyWUL0hQ8drk423p4YPC83CAjj9EYyxGXSNjXc3VtQ9Oe4jO2evKu96DEl8Jaqac+wv
 hUNKVprZ1oR39h1JcLCIsX2fXDUpyZUhLPB3KtYmb9UtvE6SbdXuN8xycSTSpfu9ZHhL
 K+WEX6XRFLj72kcSwppvuf2TWYhrn77LxruRE/Cl3XRMcMAzklak9GWwtFj1agHvJEcQ
 RPLQ==
X-Gm-Message-State: AGi0PubG2bjlR5br8YMVEeMeY2ff8SWBdDml+M2gTeR1kvPu60LMOiit
 VhJ7+sM2JjVxt/qW2qsgwQo=
X-Google-Smtp-Source: APiQypJ38a1LjrxqECLlYtfvpgXWAwQDQASib0V5TWlj0xUr7UPGEVPRcz1A/vXoxpgrmLk5qeo7cA==
X-Received: by 2002:adf:ec09:: with SMTP id x9mr560156wrn.364.1588281860038;
 Thu, 30 Apr 2020 14:24:20 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id z22sm1237653wma.20.2020.04.30.14.24.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 14:24:19 -0700 (PDT)
To: paul.kocialkowski@bootlin.com
References: <20200430164245.1630174-2-paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: rockchip-rga: Add PX30 compatible
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <ed1ac7d6-12d3-5480-3699-70a88595cac2@gmail.com>
Date: Thu, 30 Apr 2020 23:24:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200430164245.1630174-2-paul.kocialkowski@bootlin.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_142421_645220_E982FE40 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 hansverk@cisco.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 thomas.petazzoni@bootlin.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paul,

> 
> Add a new compatible for the PX30 Rockchip SoC, which also features
> a RGA block. It is compatible with the RK3288 RGA block.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  Documentation/devicetree/bindings/media/rockchip-rga.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> index dd645ddccb07..740586299da9 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> @@ -23,6 +23,9 @@ properties:


>        - items:
>            - const: rockchip,rk3228-rga
>            - const: rockchip,rk3288-rga
> +      - items:
> +          - const: rockchip,px30-rga
> +          - const: rockchip,rk3288-rga

Use enum.

      - items:
          - enum:
            - rockchip,px30-rga
            - rockchip,rk3228-rga
          - const: rockchip,rk3288-rga

>  
>    reg:
>      maxItems: 1
> -- 
> 2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
