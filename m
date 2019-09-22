Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7045FBABDE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 00:13:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AO8sWCryfpg1qntoWluh7Ydlvg5qw3Fgrx+abk7nZK8=; b=giimg55/q3F2K9
	TiaxRsgT0J1McL8+KiwSwPNOwXaCeDCOl3PMOR+4BG75usTOe0a0XQeSD435gxt3+Dg6LhZTaDpF9
	bD50U6qLFI0VR2z6z4jkUKz76mQUuoDlQ3sLoSwtedO33wTHTONjHdQ3pf247iSvn/scGDkeNI66I
	UFLTnT625KNZhox+T0MayrlJFdbdIj1clI2oRXC/qpkYva9s9DtXqubgZDLqW6AhAW4UlHnFqcBpg
	ZeKBfIU1+glV2ZE+QkwmiNCSMkLnQFbYI3NgfcN3B/tZ4i1G6MTxXvHRNkfT+1p/Fc45g3zPPgMfg
	dIMm1tmGVfH4iG8kbcRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCA6U-0001g7-E7; Sun, 22 Sep 2019 22:13:14 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCA6J-0001fR-Ep
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Sep 2019 22:13:04 +0000
Received: by mail-pg1-x541.google.com with SMTP id g3so5239515pgs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Sep 2019 15:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=PmAznyfs4k+mWd//xBrPme3TcumsUBoHQjEZq6u+NLY=;
 b=Q9CxQCZVN3CeKim3T14DI+dzH5PlCDTA8QmbsW+C8eax7IIA/NB0aFCLOE5uEMlnah
 n9HfkK054QH0pzmBa/MaaPHryLTCxiQvGwyx9m2DBJ3+fWXwG4tZ1JBoHBYs79JyChbx
 r5rFDF448s/NfZ2lrFLEI/35LniKtZVDGfAnyeOltNGUbu+hXauDlNLnNAaQqWncuzo2
 +3937Vc7WBUdbsp3LzrmK2ZIuYecnYyYnVMqeOVgiI0Tg/28mg73wkAS2nR2q0eakRY3
 9/YK/KVHUUOG6XAHJmFirHgZxtOEbFencrEJwS4yKpWhp/Wx/AxSLIA3VX7LS190gJnR
 PoVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=PmAznyfs4k+mWd//xBrPme3TcumsUBoHQjEZq6u+NLY=;
 b=Y8e8S36QRA1pGMl046HRCt5jVG2mojWeSctwg7PB04YtFcBufm8hbSc9bwp6JaDbSg
 fcSwZSb0FvH+DgfrqnOMTVpc7hn2ydSeo+aTRbLQ1TFHSrvDr9B3WTiT9FQs2pM8NfLD
 4PrLnqvnj2N176Ch9M69v5zfyb8Db5p/+OnzO2oyOCENT7ytIRgfDeQYcirGL4GBhRMH
 MTeWserMj0lc6Tf/BISLsRZDllj3aolGgt5XSo/x+620SJRLXZdmk8J5kPlEisZbhng6
 uaQ6wGA8dtfF11BkJbUQr/neneZWRGwBRv5YuuLtlyoDdmwnPJOtqc1d4L1svXxo1JJT
 COtA==
X-Gm-Message-State: APjAAAXTh76fE1aQ/Pjt80Mlk0/tCcsuWBHrGXpN8KszM9DnFW8h8W4F
 o8bd3VhlA9UQ8eiC/XO4efF/zA==
X-Google-Smtp-Source: APXvYqzciIn5+C8G7UZYhYgLD06dOmlQZq70XrUrVD2u2KT92kUx/KmLzyi/sFi09I3djSRu2p/rmQ==
X-Received: by 2002:a17:90a:8087:: with SMTP id
 c7mr17644769pjn.56.1569190380757; 
 Sun, 22 Sep 2019 15:13:00 -0700 (PDT)
Received: from cakuba.netronome.com (c-73-202-202-92.hsd1.ca.comcast.net.
 [73.202.202.92])
 by smtp.gmail.com with ESMTPSA id r187sm7877357pfc.105.2019.09.22.15.12.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Sep 2019 15:13:00 -0700 (PDT)
Date: Sun, 22 Sep 2019 15:12:57 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Christophe Roullier <christophe.roullier@st.com>
Subject: Re: [PATCH  0/5] net: ethernet: stmmac: some fixes and optimization
Message-ID: <20190922151257.51173d89@cakuba.netronome.com>
In-Reply-To: <20190920053817.13754-1-christophe.roullier@st.com>
References: <20190920053817.13754-1-christophe.roullier@st.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_151303_562867_36586F46 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, robh@kernel.org, alexandre.torgue@st.com,
 devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 joabreu@synopsys.com, andrew@lunn.ch, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 20 Sep 2019 07:38:12 +0200, Christophe Roullier wrote:
> Some improvements (manage syscfg as optional clock, update slew rate of
> ETH_MDIO pin, Enable gating of the MAC TX clock during TX low-power mode)
> Fix warning build message when W=1

There seems to be some new features/cleanups (or improvements as
you say) here. Could you explain the negative impact not applying 
these changes will have? Patches 1 and 3 in particular.

net-next is now closed [1], and will reopen some time after the merge
window is over. For now we are only expecting fixes for the net tree.

Could you (a) provide stronger motivation these changes are fixes; or
(b) separate the fixes from improvements?

Thank you!

[1] https://www.kernel.org/doc/html/latest/networking/netdev-FAQ.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
