Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3361446CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 23:02:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7jG8Egck0E32qX/LbGenh+g5yuNRXEq6XzhOF/lXJbQ=; b=iMkH1g0eGbaJFZ
	NEZqta/KQ1iwHBe3l0Z2lhLi+c3o4i8UEqUk0pG+KTb/0x43nKRRabHNOy8PZvNU7ytzqW20jRdzL
	S12r4YTeuAsolHf+GCSW+h2/GGEf6vUef5Olcap+eegghzKuH5fM1qjhFyoQsLM00bXh/DpNvYuid
	m/qm2gbls0+Gy/xpz6OAdE9DDhm0qgthsJC1VJPhGLm6aRILFwBJUoYqq/uiXWH4AGBdbFToKqn/d
	T+a6QqYTnQ1EL6o9e+hbGybd+Kx7wJrDtwr/OmVELSFUJgR8Tzcxchpc7W/dVCir1YbiC0kcyXQOa
	asskOsyqV6XrMILrXC9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu1ax-0006B1-Q8; Tue, 21 Jan 2020 22:01:59 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu1ab-00064g-NP
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 22:01:39 +0000
Received: by mail-ot1-f65.google.com with SMTP id i15so4461234oto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 14:01:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WLamrH1KcwfwPOF7XObLexp7z6M67I0bzxIY4IB2VTI=;
 b=MbpEbRidhiTGRchgj0a4i+Et4h0N+TcIydRcOCCb7vC6Gq8BPVWnsABiBHXOx7y2Yc
 5MvGzf4tINwgnOLwvBfwZe2kyGXPR/XO+v8RjJre9wHwGmYx35oQw7REi/HS1gey9B6q
 VhMWPBT+DoLkxtccan6jfPjmbBvrrh7Tb+yKpveJhj+zzRNyBO0MZH5BmFRpRXZEteZo
 dUEv1SQNLFmWtRET09j+7UZdXUvWNdLJwtDMZXDE5+2l3b/PFBn49lGkxPIzjcX72FgJ
 oV5RCRqKUGPuf4bkJkdMSqsPuxrvCb/nnXENbAYIvsiGNCDc/1PVCqGASSBszGdwzKgs
 5WlA==
X-Gm-Message-State: APjAAAUVgyEnXCoHhznVdzj+ZViE1Fdq9BiTLz38OURLafveVZhmv78f
 WQC8n2hKwYjYjQLEUmUOEg==
X-Google-Smtp-Source: APXvYqwYUtpnZeBhFJqfIbqggpjOxvmlOgiW69hH8RKvbBjceT9T20olL0zhaSZwIuY0rUy9QYz9lw==
X-Received: by 2002:a05:6830:4b9:: with SMTP id
 l25mr5244408otd.266.1579644095826; 
 Tue, 21 Jan 2020 14:01:35 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g19sm13994048otj.1.2020.01.21.14.01.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 14:01:35 -0800 (PST)
Received: (nullmailer pid 15322 invoked by uid 1000);
 Tue, 21 Jan 2020 22:01:34 -0000
Date: Tue, 21 Jan 2020 16:01:34 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 3/3] dt-bindings: clock: Refine i.MX8MN clock binding
Message-ID: <20200121220134.GA15267@bogus>
References: <1578965167-31588-1-git-send-email-Anson.Huang@nxp.com>
 <1578965167-31588-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578965167-31588-3-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_140137_844010_AE306DBD 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 festevam@gmail.com, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Jan 2020 09:26:07 +0800, Anson Huang wrote:
> Refine i.MX8MN clock binding by removing useless content and
> updating the example, it makes all i.MX8M SoCs' clock binding
> aligned.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No change.
> ---
>  .../devicetree/bindings/clock/imx8mn-clock.yaml    | 48 +---------------------
>  1 file changed, 2 insertions(+), 46 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
