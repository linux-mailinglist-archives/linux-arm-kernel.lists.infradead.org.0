Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8DC1E5434
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 04:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+dl0F8chTNH8hHBSYSNph2DxZB4RC4fG3ME/IQc2jk=; b=bv4+HLtuz102kX
	au5Nu2d3rvy0IglRuSl0qxw/YA7ZkTpU4OIINEFD3myBW0GXdZsrHemgQHrHtrLBFtEWtcy2K5BPQ
	66+k49j8xNG830DlcmqPkxVAVdY5vaO6HKCwXiw0wubvoPkeatmQ5Q+sV4mg/ixVXeSURW4VHNmXm
	WDq2U/8QJfboUUymuKVKMLawXwucIK43a3GacxlCMNfoU9+A5G89DKVtj6MQVjnsuyXwhn3/p4AvN
	ryeLwRY2j+sD/CtQvFAXcypGFg0+JK9V+OmLXU3mgz8+dOG2S8brN3CSgUpWgH4wkJeGsuFr+Godb
	oG1VCr0Yma1rhUbSEG5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je8af-0007BK-8j; Thu, 28 May 2020 02:48:17 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je8aH-00075x-8S
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 02:47:56 +0000
Received: by mail-io1-f67.google.com with SMTP id d5so18889955ios.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 19:47:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nol5LcAvx2OrbeiJVipO+GziL2apDZJHtoMdVOq2IGM=;
 b=ulwsxXfPni80v5HETq6gX/1rqqmLcDAl5HMxcmnYKDv+LulxGIMyQaK3QmS9jnA6bP
 pdD8ZvMAcCz9EvEa1gzwpvrojOAIaKvij0qQ0VsVHbGEURwbw88B+CGQmcEc+m8y+4lv
 SKkwtdkVF5cV7v5A9dCh6OToqZ2TFuPsQls4p6AO61ejPiMmSaX8PEad+wx9UhxVh1Ui
 demaOAWOYrMA9X1ygQ3FX1VAME68Kf3Lts0pked5HDn+vWS55qz5FMXD2+cOditlXGoE
 C+WmgUH+hSeSc0UEVV+O1TzCuzSe/dLwACPt+Qvwl7BKp3ywX2XJckJ886gNhYBnkqGF
 ZSqA==
X-Gm-Message-State: AOAM533lQwz9E0EhJg4J0IBRJnk2rzgIj8TI69zk3UrdxKtyJrSUxs52
 j8PpNulYeRkQux9jdlDBRQ==
X-Google-Smtp-Source: ABdhPJxh9xMEOESe4dvkIWxvoOtW9Ek+OISv9yhnZpw4mRyTGswZ2YyZpmEHk+6hwsLGim8AZaVN6w==
X-Received: by 2002:a02:1746:: with SMTP id 67mr762072jah.103.1590634071868;
 Wed, 27 May 2020 19:47:51 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id v13sm2585682ili.15.2020.05.27.19.47.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 19:47:51 -0700 (PDT)
Received: (nullmailer pid 3269428 invoked by uid 1000);
 Thu, 28 May 2020 02:47:50 -0000
Date: Wed, 27 May 2020 20:47:50 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 2/2] dt-bindings: pwm: Convert imx tpm pwm to json-schema
Message-ID: <20200528024750.GA3269380@bogus>
References: <1589439259-28510-1-git-send-email-Anson.Huang@nxp.com>
 <1589439259-28510-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589439259-28510-2-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_194753_314708_1038311F 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: linux-pwm@vger.kernel.org, kernel@pengutronix.de,
 devicetree@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, thierry.reding@gmail.com,
 Linux-imx@nxp.com, p.zabel@pengutronix.de, u.kleine-koenig@pengutronix.de,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 May 2020 14:54:19 +0800, Anson Huang wrote:
> Convert the imx tpm pwm binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/pwm/imx-tpm-pwm.txt        | 22 ---------
>  .../devicetree/bindings/pwm/imx-tpm-pwm.yaml       | 55 ++++++++++++++++++++++
>  2 files changed, 55 insertions(+), 22 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pwm/imx-tpm-pwm.txt
>  create mode 100644 Documentation/devicetree/bindings/pwm/imx-tpm-pwm.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
