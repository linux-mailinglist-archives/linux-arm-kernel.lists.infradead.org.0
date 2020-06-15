Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E1B1F9D6F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ni2cc6nSYUtpCPgUliURkbunHEiByURZBdiG+2uMF9s=; b=hrLo49EuUkp6pf
	RIWmsidKNlomA8uvSdRTF+dR46QN0MjRPzFpTfk+SfX+J5cru5R+UHqBp6+1UxEK+6T3VgbCYhC8A
	V9nJ59A3HTlKEYlZ9EH2A0PsxzbAID0uXV2EYMKbtw63e3gkuymKl1Xnh8LSWNC42k5dlHrkjf6PW
	yuD5vr4GbUMILSMOUCZwg7SIpAV7dF7m3kJXwYT77xupF4m9TmSCyjY4QkOrH4Ev8CUSJuSM3IQXC
	dEAsQN31odomWkgyal/T1oiTNXEvtCzz0YusFAtlUbxWSdZYZnv9QyS5BvikfmwESSuB7nLlnwqec
	EduMVsQN/P1RhMQA1uwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkryx-0001rN-Db; Mon, 15 Jun 2020 16:29:11 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkryk-0001r1-AA
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 16:28:59 +0000
Received: by mail-io1-f65.google.com with SMTP id c8so18580918iob.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 09:28:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=crjYBLmEThzX/ubrSU80z4HF6XsY3k0B4QYp27AbQnw=;
 b=kt/c9Nk8n4dC+y7/otBF7zgaDqPqCePN7q2Yl7lnGoxLzY8iFRButNlT0pmrMFD4/W
 yZxcpebnZtH7Iv3yTPH6EH5TEyaF1I3DdaFLRpE/8VAHbXU9w/MfgKAt4ZfCAxNqfKWG
 6WTxP+Fk4PPWjIebaI/CtdO6DiDfms5SEDPwqN5b2IWRgVqEdiZ5zRAdJcqY9Sd+ch8d
 nrtTwum/rpE91W8hMkd2FRJ0iR4O6U/Am4uiiJxoSQT0BWyOOksFpkrs7xbp4vZertuT
 r2l88Vns6RyKF14Vn/m/ILpkwi1Tegomf+9Y6Zs25s9lAGk6ymwdBgKRgz91GKYaHds4
 LFSA==
X-Gm-Message-State: AOAM5331isUHZw1coG7+wrmdssutaBSaR+CkoMK0rzxvGqItx/m2CUx9
 G0zyTSBuZFOykYH1pxbh3g==
X-Google-Smtp-Source: ABdhPJxS6wJAJT/g0Pb1HsZ6yVGg+5gSqeG5fcUoDbi72yD1UIqBysfLFirFj8i3qjvTrW9lCBgTAw==
X-Received: by 2002:a05:6638:54:: with SMTP id
 a20mr21791499jap.3.1592238537002; 
 Mon, 15 Jun 2020 09:28:57 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id k5sm8154372ili.80.2020.06.15.09.28.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 09:28:56 -0700 (PDT)
Received: (nullmailer pid 1898612 invoked by uid 1000);
 Mon, 15 Jun 2020 16:28:55 -0000
Date: Mon, 15 Jun 2020 10:28:55 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 2/3] dt-bindings: mmc: Convert imx mmc to json-schema
Message-ID: <20200615162855.GA1893084@bogus>
References: <1591234886-15351-1-git-send-email-Anson.Huang@nxp.com>
 <1591234886-15351-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591234886-15351-3-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_092858_350942_B99EFD7A 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, ulf.hansson@linaro.org, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, mpa@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 04 Jun 2020 09:41:25 +0800, Anson Huang wrote:
> Convert the i.MX MMC binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- add "unevaluatedProperties: false".
> ---
>  .../devicetree/bindings/mmc/fsl-imx-mmc.txt        | 23 ----------
>  .../devicetree/bindings/mmc/fsl-imx-mmc.yaml       | 53 ++++++++++++++++++++++
>  2 files changed, 53 insertions(+), 23 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mmc/fsl-imx-mmc.txt
>  create mode 100644 Documentation/devicetree/bindings/mmc/fsl-imx-mmc.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
