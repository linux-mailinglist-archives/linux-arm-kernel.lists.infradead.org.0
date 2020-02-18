Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8E9163303
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 21:23:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FTh2cujwtGFG3Jz78TB3rnC9Ft8ehzDx35JArqXzLhs=; b=TqDwIih7plDJYX
	tsR93TnWhTpiwU9RDBOAGdrZ397ZBQ69NQt1VCnUTsXALnwZB3oZ+g1pScojelHNhW7ukbBamONzO
	99h77/EvowpNVpUA4/EGEzFmUAqinC95f44Mef9WpYliM2BgtzymOdhDscsA8XA0kkH1GEXmxsfpu
	SVciP6o2hVEVwmob4HARLsafbx7SOQdEX1EMpD0gwpEJ4RUzV0ZmXfF5yOSkbA4W0ZUtwN6O67nv2
	4Yh/IWZP4ijtPXhftx6kf3AmkD9Ywwxbq3s3xrf4dx6U3IY9bsT63E/pVZF2XOLczxtHO9CtQl2Jc
	wNII6PGy6MvtQ/S6xrTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j49Op-0002dP-EH; Tue, 18 Feb 2020 20:23:19 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j49Oh-0002d5-La
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 20:23:12 +0000
Received: by mail-ot1-f66.google.com with SMTP id w6so11640297otk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 12:23:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KXAg/34S3FvFzX0pQBHTJXGpiExV3W+ihyd1Dn2Mhvs=;
 b=kEtg5VmurVOZcKUTUNNUPV0P2icmyOksaQ/OXsC4zMBizuQnCePuwfnL+PMs0rp7jE
 LlClkzmv+3QYTJ+vmxFOAB1fHOhRyIWBO7rdrrEyJjN3MPYvH3GB2H4eCOL0ZVAQocB5
 ZBYal+uWpX5uBZOwheLIJBfVIaA8511oICNmS+fVKByKion3E/JVT+hwg8997V34x1Id
 okiD1VPvkyuFEb+aYe98ThmU03IR2ldtvQh28OG+yhu1RV2Eg5DO/seqgimQqQrVA7OF
 lQvM493+5gXAtE2shFWbU/tgYkmuOVbbL4wb+L11e6C6QiELHV5kXUIdNhiOUwWkgWUx
 VhfQ==
X-Gm-Message-State: APjAAAV7chf56cWulyQLRk39LrEaLs7lvUzGMZaUcFOTbPsyaFOsp8EQ
 547gVOFPyZs4hDytEfheug==
X-Google-Smtp-Source: APXvYqyzvxFzvOCeCS4HedEasKA6K6wnQhBPGg7dbaFVPmVQk7FQtsqWZXQE/aGzUFgd7ormvX924Q==
X-Received: by 2002:a9d:7305:: with SMTP id e5mr16273114otk.64.1582057390643; 
 Tue, 18 Feb 2020 12:23:10 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r13sm1525277oic.52.2020.02.18.12.23.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 12:23:10 -0800 (PST)
Received: (nullmailer pid 4455 invoked by uid 1000);
 Tue, 18 Feb 2020 20:23:09 -0000
Date: Tue, 18 Feb 2020 14:23:09 -0600
From: Rob Herring <robh@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [RFC PATCH 30/34] ASoC: dt-bindings: Bump sound-dai-cells on
 sun8i-codec
Message-ID: <20200218202308.GA4022@bogus>
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-31-samuel@sholland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217064250.15516-31-samuel@sholland.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_122311_704335_766DEE67 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 Samuel Holland <samuel@sholland.org>, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>,
 =?iso-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@free-electrons.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 00:42:46 -0600, Samuel Holland wrote:
> The generic ASoC OF code supports a sound-dai-cells value of 0 or 1 with
> no impact to the driver. Bump sound-dai-cells to 1 to allow using the
> secondary DAIs in the codec.
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>  .../devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml    | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.example.dt.yaml: audio-codec@1c22e00: #sound-dai-cells:0:0: 1 was expected

See https://patchwork.ozlabs.org/patch/1238984
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
