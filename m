Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 392181E72C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 04:51:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W/nA1cQuu+aoyQVbCShb5hujBSMRAunqFpPTiSwRzwA=; b=bqr9f3arO8oF0h
	mMnRiRP91q9SckGKOdn+F5v2gSUajk0/r5t5azHky1iJ914ITKLsxwhkwyhwpKgs6RekC1rtOZzQf
	TpzfxaRTCwr1oIiqZWaj44S046Fm/aFZPwbVQ27dIVxHGcLKugoHucAVPyA7vBNDUWrnwdEloxXk8
	R78umxuqME5PePQkOl10iCKfwCATkdSItlk8QrjTIPY5b5YmV7YfLxxrZQoScIBjFwDlFrdXBlTGW
	w7wiHzoj4OneLha/7NOVuz+GtbTCPluj+hnNvvkqxi7khIz+mRK4XX1Qx3QfncZa00XyuxvAwMBz0
	bIG8y4yEH/CA65CJcxdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeV7G-0003rC-2Q; Fri, 29 May 2020 02:51:26 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeV77-0003qd-9z
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 02:51:18 +0000
Received: by mail-io1-f67.google.com with SMTP id h10so753672iob.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 19:51:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5gXBJBmh9TexUjoDHc80Ri58ocLwBITZgHH5HYAV6ao=;
 b=QAl4iyebmLLw+C1FKsluCO4TxESt95AdeSFv5vJPoAEIX31nOUCkwF3UxI/Ellg2JL
 1JI/P7cpGoGoboVrTlIKb3IQ3+LWCRGSttG/mZRVilG8ovAqNU0/Xy3pB0XVX1UDV6XQ
 Y54W8lDO8XmLuaHkV4gPjxVlUVKkMXpf+cB0iy2MoqC2tQvuFrLzn7OQ6vBInj1eHkWq
 ZF8gGwPTP0wJI2+Ps2b/PVTNUoYXzCMcjikDnbHL07p8PuxHdtxaxL+XMvW4MnXIAOJQ
 DozG4Wal8bH5kPaYSiQK5Y6uX5SW0qpqDucaLdwFo7L9axU/m5zZy8HHnceOUl83/cp9
 ce2g==
X-Gm-Message-State: AOAM533zJyD24LmJx2a101c/Oxg9UKbmlq/exfFUouPUdHs3p+zvI5jB
 f63GVWUO7qgKuTL1DseEng==
X-Google-Smtp-Source: ABdhPJyczF+EzZ2p2WAHUbXJq77+C4fuaCMaESmjiStEvnYn5eXQAn5rp5n3UR8adqwF57u3dlU39Q==
X-Received: by 2002:a5d:9f4d:: with SMTP id u13mr5000884iot.113.1590720676442; 
 Thu, 28 May 2020 19:51:16 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id i15sm3625216ils.74.2020.05.28.19.51.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 19:51:15 -0700 (PDT)
Received: (nullmailer pid 1175110 invoked by uid 1000);
 Fri, 29 May 2020 02:51:14 -0000
Date: Thu, 28 May 2020 20:51:14 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 4/9] dt-bindings: clock: Convert i.MX28 clock to
 json-schema
Message-ID: <20200529025114.GA1172329@bogus>
References: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
 <1590650879-18288-5-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590650879-18288-5-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_195117_346856_EED5126B 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, shc_work@mail.ru, sboyd@kernel.org,
 festevam@gmail.com, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, s.trumtrar@pengutronix.de, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 15:27:54 +0800, Anson Huang wrote:
> Convert the i.MX28 clock binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/clock/imx28-clock.txt      |  93 -----------------
>  .../devicetree/bindings/clock/imx28-clock.yaml     | 113 +++++++++++++++++++++
>  2 files changed, 113 insertions(+), 93 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx28-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx28-clock.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
