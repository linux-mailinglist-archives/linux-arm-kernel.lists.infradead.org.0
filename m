Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD61BA3B34
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:To:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahnd7kJTYvUs6du6Jha7YlJ+rsGa5zgvf/ZBCN+J8RE=; b=c8PSObqBUYeYc7
	X9RoTTkfTCgfVS9jq8+DPGIq8fkmqUjwvaFjkLX18c4hK1RWKY6uXNvF9H/er7KF6QgbJExJcm2I+
	1l7s39tVrlili8W+MdtWLXrgH4yHrgeksK4rxTSgxXPbMKoUGOsuvKzCGY0CgHKBp+pcWLe06uiVt
	kmooylFbcD0HgVbnqgCczz4jBQBDhNdv8YxA8rTGNxVxh209hHa8IESD0XHasnb0fHflrWx1NmIb7
	LKuArPcS2QNvl4Wvne+xSe9QjG75CT81CAZCF+yEtocE0UGPXtu5cxe6yqQE36/dmVtwg+ZSJ+WmV
	DzM2DD3AHVykAN9y749Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3jLo-0002Y4-6Y; Fri, 30 Aug 2019 16:02:12 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3jLe-0002XH-CV
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 16:02:03 +0000
Received: by mail-pl1-x62e.google.com with SMTP id 4so3551374pld.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 09:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:cc:subject:to:from:user-agent:date;
 bh=Ll00P0HvLyh9ff4mGqhoY7oNmqZV/WIp9ZbBt7WSZuQ=;
 b=DVNT4sGrKS8uBzpUvPlrwNcWOB48ID/E33wWVXKNaf5Rn1vgh5+t2kQyuqrFOdqw8j
 2YmAmtzGl93QBYkr5aUtVLO4FEmveVBcPhwSjMHjKvnQY3WFEPGdEkGAlL/QNiRxAde0
 9vR6xABOTJ0qzHXur+j0+MpQAv4Et4E71ZHUg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:cc:subject:to:from
 :user-agent:date;
 bh=Ll00P0HvLyh9ff4mGqhoY7oNmqZV/WIp9ZbBt7WSZuQ=;
 b=NCgUn2js5RbcdS7nBPPeRFZfVnUuDX/NFqbix26AFc1PGKKOE1q6EUp/jb26Sjyrnh
 LAIXGY/OxHyuqwDb8TXDIzhB137unPjYQEb+tnGvJlBw3+cwbV2R86mKwz7ZKCOZKRp2
 KUJWuEWT/bnqmwUSCdY1dGecPYlSO3XXDO33sc+YKYk/Q6BTJrXwC+LWMNBJwDQnQFyE
 8+1L5+poUxxO3ncFAJYq5KKspW7xHfgXaGrY6Jsi3iNHeRdsEVowI5htvoeNRilsUbXB
 S+9G8w00vB9Y00Q5Knpn4zYZN3sdST9VSWDv20q75sY/IIdrE7SkpiqafCQvhmtE/SfV
 +3Rw==
X-Gm-Message-State: APjAAAUkRP5neqaaGqwBTTZIjtvli2igf5fPUM40IILOgh4yb7IbBcWX
 F80gNXF4mZ5SJLVsD9FHJ/rZWQ==
X-Google-Smtp-Source: APXvYqxBQB8qqHi4xILIYQH7twNKrk/p0gZaksrJaQi2G+n2F2uAcIBYTnbtvlcNY1uzFyMjBAQ7Rg==
X-Received: by 2002:a17:902:223:: with SMTP id
 32mr16796973plc.220.1567180920622; 
 Fri, 30 Aug 2019 09:02:00 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id t70sm5846917pjb.2.2019.08.30.09.01.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 09:02:00 -0700 (PDT)
Message-ID: <5d694878.1c69fb81.5f13b.ec4f@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <6dc0957d-5806-7643-4454-966015865d38@linaro.org>
References: <20190207111734.24171-1-jorge.ramirez-ortiz@linaro.org>
 <20190207111734.24171-4-jorge.ramirez-ortiz@linaro.org>
 <20190223165218.GB572@tuxbook-pro>
 <6dc0957d-5806-7643-4454-966015865d38@linaro.org>
Subject: Re: [PATCH v4 3/4] dt-bindings: Add Qualcomm USB SuperSpeed PHY
 bindings
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date: Fri, 30 Aug 2019 09:01:59 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_090202_453925_6DEDCF96 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, robh@kernel.org, jackp@codeaurora.org,
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, khasim.mohammed@linaro.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, shawn.guo@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Jorge Ramirez (2019-08-29 00:03:48)
> On 2/23/19 17:52, Bjorn Andersson wrote:
> > On Thu 07 Feb 03:17 PST 2019, Jorge Ramirez-Ortiz wrote:
> >> +
> >> +Required child nodes:
> >> +
> >> +- usb connector node as defined in bindings/connector/usb-connector.txt
> >> +  containing the property vbus-supply.
> >> +
> >> +Example:
> >> +
> >> +usb3_phy: usb3-phy@78000 {
> >> +    compatible = "qcom,snps-usb-ssphy";
> >> +    reg = <0x78000 0x400>;
> >> +    #phy-cells = <0>;
> >> +    clocks = <&rpmcc RPM_SMD_LN_BB_CLK>,
> >> +             <&gcc GCC_USB_HS_PHY_CFG_AHB_CLK>,
> >> +             <&gcc GCC_USB3_PHY_PIPE_CLK>;
> >> +    clock-names = "ref", "phy", "pipe";
> >> +    resets = <&gcc GCC_USB3_PHY_BCR>,
> >> +             <&gcc GCC_USB3PHY_PHY_BCR>;
> >> +    reset-names = "com", "phy";
> >> +    vdd-supply = <&vreg_l3_1p05>;
> >> +    vdda1p8-supply = <&vreg_l5_1p8>;
> >> +    usb3_c_connector: usb3-c-connector {

Node name should be 'connector', not usb3-c-connector.

> > 
> > The USB-C connector is attached both to the HS and SS PHYs, so I think
> > you should represent this external to this node and use of_graph to
> > query it.
> 
> but AFAICS we wont be able to retrieve the vbux-supply from an external
> node (that interface does not exist).
> 
> rob, do you have a suggestion?

Shouldn't the vbus supply be in the phy? Or is this a situation where
the phy itself doesn't have the vbus supply going to it because the PMIC
gets in the way and handles the vbus for the connector by having the SoC
communicate with the PMIC about when to turn the vbus on and off, etc?

> 
> > 
> > So the connector should look similar to example 2 in
> > connector/usb-connector.txt.
> > 
> > Regards,
> > Bjorn
> > 
> >> +            compatible = "usb-c-connector";
> >> +            label = "USB-C";
> >> +            type = "micro";
> >> +            vbus-supply = <&usb3_vbus_reg>;
> >> +    };
> >> +};

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
