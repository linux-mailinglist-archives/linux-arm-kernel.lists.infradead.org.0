Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB261A8528
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:36:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iuzipL8R8pDdGwgIqVExSvXcClwHBU4cyhpIBz+kVFE=; b=tJsqvb8s2yqoXa
	buYfKfLEVoKvE8HZcnH4ceB3eFJPq2Pd82GWhHkvoNZPvCu+0VFoqlhOLMdPWYz3ctY2i3aK8cs6V
	TCjplq9tXkR1feW0ZXtaBvmPzOkouq3FPQd396TZgBrtVVDQ8kwfkR3Tbg0POyqjUqpstDvpOE1Ml
	gvENRaBZmRGIioZ90kc+Ew9p0DmDJv8ZGu4LiMy+1pI1yvsOMqZqpVsRgavxzoALI9/FNMR8x+yEv
	F/IziCjmQEDViKSTLzYttlAJl5bWUBrxMBH6qxUqvtvjj7fngNrimta6teyCko1QBfB4j8Ja0aUcA
	jw/DRLtS8nSmB1mC4mWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOOY9-0007IX-AL; Tue, 14 Apr 2020 16:36:37 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOY1-0007IC-CR
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 16:36:30 +0000
Received: by mail-ot1-f66.google.com with SMTP id j4so202057otr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 09:36:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5JeNccLd8aWL/q2I0Uphl5Xh3ywOX9/yfdTm/7l6/XI=;
 b=VPdm6xOvFPzTrFPvi/QWS9LSvbQRmMcrZ5euSIUNDmJ05o+9Jtzp6K9qbcp31AQ3tc
 Ra9ldoyjAmMvrWxB+lKWaUuFn7qno2Ko3GbD6lE0dCPgxhH7n+c3SWOai8qOiaHKteGY
 vOkmPCwDx40OF//sB3Ry8LaHgrwhnpM/rUx2GT5tkHSD5xi6iZ5RF1FKcV2jxd2VeqZK
 NivoWkjYieHzItQ4FMvy+UZ1RCkBNpKsZcAwiPJLRTBLME8k5Cbf9WYV5DCRwQoR3COx
 EtPm0uXVPuDlVKWsOr9mxxc9R1ZARfi9Ll0Une6InIVCtVT4W5FnqJ3sHMAuQu6xnFfK
 XvQA==
X-Gm-Message-State: AGi0PubVlAt4AM4CfexYKrGjoi/d4kDbVLtBc/nknpmPjTA0rooxs+RN
 BT4Gy7Shp1uYtS1SgpLGhw==
X-Google-Smtp-Source: APiQypLvmzuIr2B3MuICj58NF+sqsPGPZR1D382m0X0wuXwjQvpVcD5kduqQRrGmHS7qQc+zq4tyHQ==
X-Received: by 2002:a9d:58c:: with SMTP id 12mr19943668otd.156.1586882188166; 
 Tue, 14 Apr 2020 09:36:28 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l188sm5726102oib.44.2020.04.14.09.36.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 09:36:27 -0700 (PDT)
Received: (nullmailer pid 32342 invoked by uid 1000);
 Tue, 14 Apr 2020 16:36:26 -0000
Date: Tue, 14 Apr 2020 11:36:26 -0500
From: Rob Herring <robh@kernel.org>
To: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: Re: [PATCH] dt-bindings: i2c: cadence: Migrate i2c-cadence
 documentation to YAML
Message-ID: <20200414163626.GA27722@bogus>
References: <20200401134222.60317-1-iwamatsu@nigauri.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401134222.60317-1-iwamatsu@nigauri.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_093629_418820_51D89097 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Nobuhiro Iwamatsu <iwamatsu@nigauri.org>,
 Wolfram Sang <wsa@the-dreams.de>, Michal Simek <michal.simek@xilinx.com>,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  1 Apr 2020 22:42:22 +0900, Nobuhiro Iwamatsu wrote:
> The document was migrated to YAML format and renamed cdns,i2c-r1p10.yaml
> 
> Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
> ---
>  .../bindings/i2c/cdns,i2c-r1p10.yaml          | 58 +++++++++++++++++++
>  .../devicetree/bindings/i2c/i2c-cadence.txt   | 28 ---------
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 59 insertions(+), 29 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-cadence.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
