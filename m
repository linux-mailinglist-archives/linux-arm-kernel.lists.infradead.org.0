Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 962FF1CE2C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 20:29:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zx0N8I/BoSmzNRdUBOeq3zmqS13gVagxMk0PuBdI5wI=; b=u1bWnjo12a26WW
	qxKpoy2y0G1ef8Quuy9F5S7jC7V1s6goP60OR49q4LDDEK96XCxj7itPgsV9uMY3newF8+5POcUbJ
	x0JzrJwR0c64xtdo4kNyFHoOfR0nnsEXZFLw0cq+9jktl5hJ3i8cIyJu7kyq0zUmOQ3RXRV9aVNr9
	g3LqNSI/bbA1AfYPl2mXVt6ElY/MRQimCTpJFrSzPW2/ZJwrBUip9wdib/iNQI8Z99ScbuIXKxc2H
	zIbaCYU4h2W4JZR9+Rs0iIPVMDCYn87YZuraEbY2dbCsRpxF7bFWDFj55Ier4cwcihPqqs8CwC42K
	5SNmw2j+ih8Mj5Afe+zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYDAh-0008Pf-Hr; Mon, 11 May 2020 18:28:59 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYD9W-0007PV-Hq
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 18:27:48 +0000
Received: by mail-oi1-f193.google.com with SMTP id o24so15974557oic.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 11:27:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AF44SBQidL/1nuTUY00MQnDKIQPVWNPKZOL9w+D+Z08=;
 b=YPmdk8eF3J/nnODlu86P1gOj6sZDQuNwQJKIXfQOIdAnmYSVMz1knOTY2xCOEqKOys
 FjfYv7jS7igNLLdfWmxGcOaUZaZI4qJfkomVlgq1CTHFCE9t+k5dBGauXUS6LzSZnJDo
 fgmQx8eiiO2TYqx3OnbT4Tg4K6TPb3PlwjyiYSGuhqzaUKJbbEcM/PsFv+zT4iXf+4LH
 IfFENhP97C09VpZMGzeeqlnwtm/kma7IYAE1SutPP6iRIZ/NggXHdEv7PrpZkJnhqmSt
 A/XrTczu3ik5qvdrEFONtJj9SeneNgKgPMcUfgoP/Y3L9DPEGlX3vtcUUGPnQvinshOA
 ZOhQ==
X-Gm-Message-State: AGi0PuYhtcCkVOj4yFdRK8D7TfRGVaJkh6yN3CBup2LVfxg6tOXhmliM
 H8TG11NJP9tTqdShYAydLA==
X-Google-Smtp-Source: APiQypJZp8K7ZKYFivbdUWwWOufHVF5HSbqXoCMZfWZ7Fhk4i9srELxLj+oi9ZKacSVH9aLLafe8xQ==
X-Received: by 2002:a05:6808:b36:: with SMTP id
 t22mr21158774oij.121.1589221665737; 
 Mon, 11 May 2020 11:27:45 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x5sm3322995oif.29.2020.05.11.11.27.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 11:27:45 -0700 (PDT)
Received: (nullmailer pid 20642 invoked by uid 1000);
 Mon, 11 May 2020 16:10:23 -0000
Date: Mon, 11 May 2020 11:10:23 -0500
From: Rob Herring <robh@kernel.org>
To: Alim Akhtar <alim.akhtar@samsung.com>
Subject: Re: [PATCH v8 08/10] dt-bindings: ufs: Add DT binding documentation
 for ufs
Message-ID: <20200511161023.GA20124@bogus>
References: <20200511020031.25730-1-alim.akhtar@samsung.com>
 <CGME20200511021406epcas5p229fb46815d3c29ae06709fa6160e0308@epcas5p2.samsung.com>
 <20200511020031.25730-9-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511020031.25730-9-alim.akhtar@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_112746_786438_07A0BCFE 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 martin.petersen@oracle.com, linux-scsi@vger.kernel.org,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 11 May 2020 07:30:29 +0530, Alim Akhtar wrote:
> This patch adds DT binding for samsung ufs hci
> 
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  .../bindings/ufs/samsung,exynos-ufs.yaml      | 92 +++++++++++++++++++
>  1 file changed, 92 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.example.dt.yaml: ufs@15570000: 'pclk-freq-avail-range' does not match any of the regexes: 'pinctrl-[0-9]+'

See https://patchwork.ozlabs.org/patch/1287439

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
