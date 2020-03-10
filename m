Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B88AF1808F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 21:17:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZ6WAEmQqDh5yWe/rIDmpgrgrBryHsQc2vZMJsHHqjw=; b=HkGI77dEh7lFrx
	nM5yWpgmgN7I1j+KocC3qQWqaR1VB+k/IP/MrtwTC9mrrYkF8CjgZZl3zuiAqobHb5ijo+irImXo6
	A8NvJYdJTRDU24hQmDdehWFR4UsX/fl7whFu3ktlR28lOOV+J0lVarN7P5OvhNcCYL0uy85kfeyiK
	8zqljcr77hfd1MgTSLV9anxrfnbS6UJJtQr9vPVj71kM/ovpjsW4YaW5QrYGeTZk9hHwnAo4GV0C6
	zpEyfLrFbpP40kMMVV1pM+2/TVZo/fzkoXL8D7ePlK/aUmEMpZMuoFaoD4wj6QQ+vdtCxBbEniGgo
	21WDUq0IMXD1hk4KcZTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBlJy-00046F-U8; Tue, 10 Mar 2020 20:17:46 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBlJp-00045t-UX
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 20:17:39 +0000
Received: by mail-ot1-f68.google.com with SMTP id a9so8316682otl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 13:17:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SALtb00tEMzq9uXRFmiEx+QH3Zf98Xn1eLOE8cTe24I=;
 b=KibPlyMNLJuOPxb6aJRrnZ3K+wpl5g4dgtvBqq/lkH5ut5/Dy5xDF5gewCgGd7DecH
 MWlXXuBk19eQO0jS+nbNeFiDZAHM9f0s2GZ7jf21ZmOMGdRy0uzU9nYBLSJ++SwhJr0I
 4Qt5LAwXHVQ7phGzWn9PHcTeV5MbGpZM/nhuJU8AslbYIkd3RbMHzN2dgc11u6p9lSIS
 SZRK7TFNT6u9ATxxLWNfqnlOEUjhNsq9CT/ASZF1MvJD4OodrOOteweLaRiXfFtptVPq
 zwdiCp5bwmmAoKoWBaQNZ6LBGrYAK7u+EFMs/Ft56ONGVIpCPlxgrWxbZxj0IVVBkTgt
 X6Qw==
X-Gm-Message-State: ANhLgQ3wS/2yIGDuxdmi7btJcZcYcg7zpt0jTCPo9P6ZEurdRanB6Dyv
 ABVivmSrjz3TqZBbrvcDu9r6o7A=
X-Google-Smtp-Source: ADFU+vvd4bWBEv3HptnfOHpj19yNbzPlCehj5aSpWXjg8ppsPpo03XcBLibrk39Ai/jwvcUg9e35Xw==
X-Received: by 2002:a05:6830:1d69:: with SMTP id
 l9mr18434593oti.192.1583871456874; 
 Tue, 10 Mar 2020 13:17:36 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l1sm4573693oic.22.2020.03.10.13.17.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 13:17:35 -0700 (PDT)
Received: (nullmailer pid 31532 invoked by uid 1000);
 Tue, 10 Mar 2020 20:17:34 -0000
Date: Tue, 10 Mar 2020 15:17:34 -0500
From: Rob Herring <robh@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [RFC 07/11] dt-bindings: clocks: imx8mp: Add ids for audiomix
 clocks
Message-ID: <20200310201734.GA31480@bogus>
References: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
 <1583226206-19758-8-git-send-email-abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583226206-19758-8-git-send-email-abel.vesa@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_131737_978954_57C0B347 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  3 Mar 2020 11:03:22 +0200, Abel Vesa wrote:
> Add all the clock ids for the audiomix clocks.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---
>  include/dt-bindings/clock/imx8mp-clock.h | 62 ++++++++++++++++++++++++++++++++
>  1 file changed, 62 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
