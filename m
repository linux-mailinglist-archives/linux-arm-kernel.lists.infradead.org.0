Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28907FB146
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 14:25:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YPY5vv8/ESdhK1CEbDdgOvBcs2+JF6Xzv7BgfbtVNSY=; b=ZhtLwMYxaPtO0u
	zJY5yntB/o22BtsCmMfKA9zIT3yPeSNAaMMMMgq15OGF7VnS1xJnepW5MqJJVFVml07DdmUAN3ZJa
	PkUPQCmmrHkJcDT9Yf6htO2mOHr7KS7RASEVPD8L+iqad0djtZ0OZn+gReZ/w/LNv8k1P5jyxxt8T
	l+4986cISMF1Hme62poJJJnRJYsiV70kLO4a+6wkVhDjV624PQWpRiMdIvUJQZqAG66jGeFIGqo7s
	SCTxdd9guKEoq0iJJjCpaD0oG1iegCPu2lQqO48Ypj+D5U1oOxTjxctTKptOPwAq3gvCrscGfVSxz
	uV+H05ncmkNBz+RFndAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUse7-0002vr-7N; Wed, 13 Nov 2019 13:25:19 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUsds-0002Ri-Qd
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 13:25:06 +0000
Received: by mail-ot1-f67.google.com with SMTP id w24so1087831otk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 05:25:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zF4OrVOU8WtT6uwOS1llThZPK6g4CW7m4WLqSZ9QK+U=;
 b=VvFI3mQpMZ5+4MYQb1gJr3nftVO8zt9NPJ0gIC3i9KZW2XVfNN7+w4XfroFAgyfaLy
 X33tXgbWNcfzkdiNZ1Jh0Y+BarrcHyQ64B1Lns8apq4ez1Cx5z1FiNAXMh8ghA7Q6Ogr
 iBVM/h97zF93xfVMcLWBOTkfCFhAyY5UiFe5PSEavVNeQb/mwAUHGtj09dc2RvpZoG1T
 QypkyEnbcDPxBG0H5iW6GbUxr+8j9eeEXcaYTS0BMJpBOEnpHuQE/Z45Ar1oQXOWYlbr
 nK86kMlCYN0XBw9mPO4ziPgE/d7mRTxw7Bum0H10I8YyKIWg4NIL0cIG8ILGDwBPLWp/
 o8rw==
X-Gm-Message-State: APjAAAWTs8VwYsH4+qQVqCXJ37squ2HLexga8n0pEEanzXH3w56cnb++
 M7V21UDnLNG/0Q85JdGtGA==
X-Google-Smtp-Source: APXvYqxa5oCymW1X33KicNWwWitm0b9BXVkar45AAp9n6f/mNdSb/0UQLBJjA7aAtBxOa+njKTY5Ig==
X-Received: by 2002:a9d:1b4b:: with SMTP id l69mr3085182otl.303.1573651502292; 
 Wed, 13 Nov 2019 05:25:02 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 63sm704069oty.58.2019.11.13.05.25.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 05:25:01 -0800 (PST)
Date: Wed, 13 Nov 2019 07:25:01 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 2/2] dt-bindings: arm: imx: Add the i.MX7D-SDB Rev-A board
Message-ID: <20191113132501.GA21993@bogus>
References: <1573092893-10612-1-git-send-email-Anson.Huang@nxp.com>
 <1573092893-10612-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573092893-10612-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_052504_875255_B519BEBA 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, andrew.smirnov@gmail.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 marcel.ziswiler@toradex.com, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, manivannan.sadhasivam@linaro.org, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  7 Nov 2019 10:14:53 +0800, Anson Huang wrote:
> Add board binding for i.MX7D-SDB Rev-A board which is already
> supported.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
