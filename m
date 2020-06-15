Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F11E61F9E13
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 19:05:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ASUED8el9hnfxaxZc4tM4L+hdpW/emdEeIIfbjMljNI=; b=ih9kxsSCfQmckJ
	5xdTtO14+AGhcWXpsY777IvBDQuH1LNgY78PY6RCMeoVcD4HsNodna6rsPa6teseo5zGZKHvl7yMr
	0RDcLRsBlg4Jmc1WCkCAcabo2ibR8rn2Kh1tTCI9GAW8efJQBQru7NYFZZwD+OBxoDbFGnx9PMbTu
	OKUKEXg0bQotjFiWlG2fU3LYx7hzIgvT/60ZRpoGflb8rh5WdWLk5SGaTccTMRKqo3hjHMpKLoXjT
	lCz/zknzW9HRcb19utLsCgnq0ga/GRdYt0uu5Cy1Qll/af3NIxbRI+d7NGi3hladA9auMZLStsZ4L
	oreOs8LsNf8R59sQlpQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jksY7-0003CY-Rx; Mon, 15 Jun 2020 17:05:31 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jksXm-0001mG-7G
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 17:05:11 +0000
Received: by mail-il1-f195.google.com with SMTP id g3so746503ilq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 10:05:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iil1Ct3yqqoRyLs7AUrfXx88B12vf8Oqs/d10YbLStk=;
 b=mioP7gAFC48FqMTb46M5zmECkRU4bvxpoR0la9czABldjGVWaJ3IL0qItszCuzcZVp
 Ps86U/ozcP/5Q0ta5msRS1Xjxr84Je8oYdLh6AyVSm/HYvEYDQ94IRcuuiLd2eJZ3WiP
 B0fhqUugX829WLyq5gVwoMBu6Mui4PxPioO0eaBHb0efUFOFbLBih6yaKTGcPdgCzRmy
 qzUOGrpwbl0nAXvLvNWqIc8YvIjgKFiOKU6buCdBtuTtjK5uotlhismSNLAVmoeENIJH
 DCF91dCYKPJ4QtIYI++TgC1/wLaCjerBrMxxTigDC305IkwDPbcOKhsRHcOhFg91nL0a
 9Hbg==
X-Gm-Message-State: AOAM530I7D1SDcXnJVjtk9pMFUvYrrQJqaS7IAK/0MPzJC8tac6ev+nQ
 tIpCedAAh01GGQtX8HnWSA==
X-Google-Smtp-Source: ABdhPJwc1Mh+mwwfssvJd2rCp7WiDQI7C4KOV3xgJBzwmOkCj5D8rBpAuHCNLWKgFfw7tkpvCelglg==
X-Received: by 2002:a92:244c:: with SMTP id k73mr27644530ilk.292.1592240708523; 
 Mon, 15 Jun 2020 10:05:08 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id c23sm8274077ioc.28.2020.06.15.10.05.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 10:05:07 -0700 (PDT)
Received: (nullmailer pid 1959366 invoked by uid 1000);
 Mon, 15 Jun 2020 17:05:06 -0000
Date: Mon, 15 Jun 2020 11:05:06 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 1/3] dt-bindings: i2c: Convert imx lpi2c to json-schema
Message-ID: <20200615170506.GA1959153@bogus>
References: <1591235358-15516-1-git-send-email-Anson.Huang@nxp.com>
 <1591235358-15516-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591235358-15516-2-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_100510_454310_EB5A5BE2 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, wolfram@the-dreams.de,
 festevam@gmail.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux@rempel-privat.de, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 04 Jun 2020 09:49:16 +0800, Anson Huang wrote:
> Convert the i.MX LPI2C binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- add "additionalProperties: false".
> ---
>  .../devicetree/bindings/i2c/i2c-imx-lpi2c.txt      | 20 ---------
>  .../devicetree/bindings/i2c/i2c-imx-lpi2c.yaml     | 47 ++++++++++++++++++++++
>  2 files changed, 47 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.txt
>  create mode 100644 Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
