Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1E916526D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 23:22:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DH1FJnZgJRPWLaFJ+SnvkNorL09rWF81kpVQZZacP3A=; b=R5qiq5rcaCpJjn
	xcm3rUTioqZO5Qput1jJDwI4XvurXzVy/Wx0jS81RR6gsyfpszyM6nZMEg49xQw6kfj2rmtw3Jd6o
	2WgkUwhAWkfw/+KoY5RDCXQeHFNfjG0eWNCVnL/2+Y6ttPXNa/8BPVgqlTUiTszyO5h+ebmLbkaia
	CBO6yvjrNp1S20alG3z4VW6TvsmpRn3acOb/wl+8Z0PsvzxhbxXhFs4c4MKOYnwcUmoa0dfbtRv+f
	aNyR0K3c0ZMdOUjndxMnWIIlwiiO93/tASCSvpe2hHNil1v5otFfoaza+FqyGvTOvPvAZ2tG28xyw
	bFSkf+XO+RZD6DqAwFOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Xk9-0007Au-3P; Wed, 19 Feb 2020 22:22:57 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Xjx-0007AZ-Nf
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 22:22:47 +0000
Received: by mail-ot1-f66.google.com with SMTP id b3so571000otp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 14:22:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:content-language
 :user-agent;
 bh=2sNkfWb3pfIlKB+u9ML9Dfe9kkvuZVvEoC0qldkLHAg=;
 b=HYJk/mmbR5vaQ/KPLL7b6WG32wqnvDD3fjB0Gxi1b1xTTGpHfN2oAZBUXKE2tSt4p1
 WQVdfpu/xw7nu96+xjEr5j1QsFEdN2S2bxVgMhKeorASr8WBVatt+Y9l9UgoufqZpYS3
 Z6EEhB2pkiIYo1j0hKzrUinFNj52uLKOHc/WRiao5P3wphWcXVxs0XEDeZtNJy5CzUcK
 S1muNjLxnvCy57ZM5Y0Eq7lLuYIZr9qIbm/CqEzapb92x4ZPxC7LoZgR5ovcbuNKBH/o
 hWEpDt2S3V8GV3S1Lt/aL8IUOF59ZhqQrQdjKu2jMTfBm4L5vpoaLPwMlWDenuNkRcp4
 lGVw==
X-Gm-Message-State: APjAAAV9jXaTVgx+xiH8WBL4Nald5U16HE+9v4Aw9mU4VBEQfaq9Gk85
 RhJEpNgluhAVzSlU10i3HPAmDa1Khw==
X-Google-Smtp-Source: APXvYqz7rt85MIurXjJi9Zhc8regbA3GAy27xdpXY9iVID53QfHaCOnwuA5h4zSXeZvXkfnK6tcwTQ==
X-Received: by 2002:a9d:6e02:: with SMTP id e2mr22323857otr.194.1582150964507; 
 Wed, 19 Feb 2020 14:22:44 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n16sm382938otk.25.2020.02.19.14.22.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 14:22:43 -0800 (PST)
Received: (nullmailer pid 13215 invoked by uid 1000);
 Wed, 19 Feb 2020 22:22:42 -0000
Date: Wed, 19 Feb 2020 16:22:42 -0600
From: Rob Herring <robh@kernel.org>
To: Oliver Graute <oliver.graute@kococonnector.com>
Subject: Re: [PATCH v1] dt-bindings: arm64: imx: Add board binding for
 i.MX8QM MEK  Board
Message-ID: <20200219222242.GA13182@bogus>
References: <20200213144451.31455-1-oliver.graute@kococonnector.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213144451.31455-1-oliver.graute@kococonnector.com>
Content-Language: en-US
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_142245_772493_B59002BB 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "peng.fan@nxp.com" <peng.fan@nxp.com>,
 Oliver Graute <oliver.graute@kococonnector.com>,
 "Angus  Ainslie \(Purism\)" <angus@akkea.ca>,
 Jonathan =?iso-8859-1?Q?Neusch=E4fer?= <j.neuschaefer@gmx.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 13 Feb 2020 14:46:05 +0000, Oliver Graute wrote:
> 
> Add board binding for i.MX8QM MEK Board
> 
> Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
> ---
> 
>  this patch should belong to this series:
> 
>  https://patchwork.kernel.org/patch/10824573/
> 
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
