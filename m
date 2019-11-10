Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3820F6B5A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 Nov 2019 21:34:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hexch+se2/rekyjB6G7d0fHpPynlTUzFTq19vzZqAjw=; b=Ca6rP66WTHDGD8
	mIVso2e6tRMwy1WDtiN1HGLM2+DssI7ZpyXx1UjfH5baORi5HFxCkkskv8OIvUTqVFc3qqAO2CDPa
	SuzLwSKSC3Oky+Kd+2qM/ethibqfAVF5uFwFi5Dqu2S33Zp1c8eyy0nZlMAZP5yUliRvuTGqSDlDl
	t0wKnXVj+mJHOkG5/42750wmbyNXz5hqR2BJk3GQz27kLakfhVvTFe8C5eILCD9v3rmfPM6ITdv61
	S5yyF9rNoj0nJeK887isnoVfCXWSsFPk/QG3dCRkEAUN7j02hQhqVnb86eTRu77OADdnhj9Ygy1j+
	BeqXeQaWxUpLB9gJqBNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTtuY-0004QL-6k; Sun, 10 Nov 2019 20:34:14 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTtuP-0004Q0-8F
 for linux-arm-kernel@lists.infradead.org; Sun, 10 Nov 2019 20:34:06 +0000
Received: by mail-pg1-x542.google.com with SMTP id q22so7994823pgk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 10 Nov 2019 12:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=zeyXL9EBqLifVcUFGXVoKedqOJMbrsEvfongGwHV/ug=;
 b=Dno+oIX1vTGCT0rXZqaFwWCPIMoquTxttsMhY2oPYJdJ3gs8lyhWiA+C4G3oWbQAo6
 Zd3Kek81Ni1VOCD0T3gUIIo4OQxj2rVlZ6WegGCGXhfFVUjUXxJfZh3mqeZ9PQlfR6xr
 J1bXD7OjMqmMd78ySNhc/2SjxvC2e+2NiV55qwHVu/WSV48hjD/Yb4KdIkAcjaA652y0
 yrupZI6Tt4LB9m9Z+3/X0Pgdsas+bRpmlcPrcm9lPQQpyzgnLORy87mS6QO8+W8tt5Lx
 3Uw4u7TV1+ZUWBZNUY1eUkoJj5RxCRm6UCB3z+TFnu4lFU1w2Pi0cSWPaEO6NuEUE5SV
 ddFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=zeyXL9EBqLifVcUFGXVoKedqOJMbrsEvfongGwHV/ug=;
 b=Fb1a8skFn27RTK9n1jxiF09Q+dOg30ruIcy97mx7MYQnUlyYZjK/uYM4my5GYqtP5c
 xpB7pJ9P5Kogny8twLlYu89Sf120+ViukhlhqlMCrrXcteHM2KYLdHNCS4Euo4ayzMp1
 RZXH/POhv85IWCk7BS2uCg/xOE5TvCNVSppC3UibktYVjRLm74pwNG1LAbZaeNk4gWVZ
 YbfihLVlUAbY8ZY1m+wmeyAcQQuoEsFPpBTD4EbTtgMUEOquJ5JDY5UFbT7/oJ1GM3a/
 RWiFiB1F09p6VgEJFEPIZTq5UkMHIHVO+qZ9W/LUghzg1aQkMHJwcg1Z4o5k0ai6bAGD
 UKhA==
X-Gm-Message-State: APjAAAVISAVCrF5uV8sNYv7ivqFa1KlCeu9b6FPw2J/0R1sCVuArg6kV
 +kAxbKvYF1jqARdI3Ro+V5oUhzdq
X-Google-Smtp-Source: APXvYqwWVqu7+x5/fmHTc0obYn2IVB6bV3vaHoNJ2Hf6k3sD6KI/M2RZvcbhlacYZ/0HyYJleTLrFQ==
X-Received: by 2002:a63:fe47:: with SMTP id x7mr25923321pgj.112.1573418044380; 
 Sun, 10 Nov 2019 12:34:04 -0800 (PST)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 j10sm12473243pfn.128.2019.11.10.12.34.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 10 Nov 2019 12:34:03 -0800 (PST)
Subject: Re: [PATCH V3 net-next 5/7] net: bcmgenet: Refactor register access
 in bcmgenet_mii_config
To: Stefan Wahren <wahrenst@gmx.net>,
 Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>, "David S . Miller"
 <davem@davemloft.net>, Florian Fainelli <f.fainelli@gmail.com>
References: <1573326009-2275-1-git-send-email-wahrenst@gmx.net>
 <1573326009-2275-6-git-send-email-wahrenst@gmx.net>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; keydata=
 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
 a9BQwACgnzGuH1BVeT2J0Ra+ZYgkx7DaPR0=
Message-ID: <0a6ba358-b1a8-9a57-1e29-6443f07929e5@gmail.com>
Date: Sun, 10 Nov 2019 12:34:02 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1573326009-2275-6-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_123405_317670_DACA621B 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Doug Berger <opendmb@gmail.com>, netdev@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/9/2019 11:00 AM, Stefan Wahren wrote:
> The register access in bcmgenet_mii_config() is a little bit opaque and
> not easy to extend. In preparation for the missing RGMII PHY modes
> move the real register access to the end of the function. This make
> the code easier to read and extend.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

You will most likely have to resubmit this patch series after Doug's
recent GENET changes:

https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git/commit/drivers/net/ethernet/broadcom/genet?id=3a55402c93877d291b0a612d25edb03d1b4b93ac
https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git/commit/drivers/net/ethernet/broadcom/genet?id=6b6d017fccb4693767d2fcae9ef2fd05243748bb
https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git/commit/drivers/net/ethernet/broadcom/genet?id=0686bd9d5e6863f60e4bb1e78e6fe7bb217a0890

And while you are at it with this patch, you may even take a step
further and do something like this for the INTERNAL and MOCA PHYs:

diff --git a/drivers/net/ethernet/broadcom/genet/bcmmii.c
b/drivers/net/ethernet/broadcom/genet/bcmmii.c
index dbe18cdf6c1b..e363a824d662 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmmii.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmmii.c
@@ -218,6 +218,7 @@ int bcmgenet_mii_config(struct net_device *dev, bool
init)

        switch (priv->phy_interface) {
        case PHY_INTERFACE_MODE_INTERNAL:
+               phy_name = "internal PHY";
        case PHY_INTERFACE_MODE_MOCA:
                /* Irrespective of the actually configured PHY speed (100 or
                 * 1000) GENETv4 only has an internal GPHY so we will
just end
@@ -229,14 +230,8 @@ int bcmgenet_mii_config(struct net_device *dev,
bool init)
                else
                        port_ctrl = PORT_MODE_INT_EPHY;

-               bcmgenet_sys_writel(priv, port_ctrl, SYS_PORT_CTRL);
-
-               if (priv->internal_phy) {
-                       phy_name = "internal PHY";
-               } else if (priv->phy_interface == PHY_INTERFACE_MODE_MOCA) {
+               if (!phy_name)
                        phy_name = "MoCA";
-                       bcmgenet_moca_phy_setup(priv);
-               }
                break;

such that all the port_ctrl and the phy_name are set within the same
location and the register write/configuration is done after the mode has
been determined.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
