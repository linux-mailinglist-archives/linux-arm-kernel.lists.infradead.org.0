Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FEC41747
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 23:55:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=glQ4yrRxY1d9L3Efx/PjrO7LlJSc7Srv3VIkVF9V8LY=; b=OL3krKaAU0/8DFIWE8idwv63f1
	tVomOjQFbvnoYrY4NYJzklROx4XOAmMlTWXKN/6DYWd3HY2aOr4afDe/PbCU7us6uCwEypdtl4nb4
	FRBhMDD/kjNfRVhK3eOmH+9ltmImtFlxFJRRVKOGIpP8Q6aaIKDVW9n1Mnlqx6M0+Zkixu2Szuwm8
	nXXZQNIpE4H1oGu+LHjtWG6NisVOueUKkGnbQEJB5hEra5SdNDDrBDbtyZxZDJH4kjZWF14ntFlrx
	+JaZTooDJnXzpD+4XxTs7luNmOChM1F19bc2ZF0yg4aLeqFdQBqBscvqTog0FKu1aHwzsOlGJJ1Rz
	JMcMjspA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haojL-0000bT-Hc; Tue, 11 Jun 2019 21:54:59 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haoj6-0000Yy-3V
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 21:54:45 +0000
Received: by mail-pf1-x443.google.com with SMTP id m30so7755358pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 14:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gqlg9mlQrzOnNuGBRs6FVMKN07w9DfmWW8w0BvZncyA=;
 b=FisnbY9x5/R5pS7dhi82yjpYpTWMxnbt50rgYFFiOXlaGRBQNXa5MoQajQeqKJQ8xA
 8AktdSCbhDpwyp2ClVkrupNm3ZLwmg1G8cjUaC0oT0x0toXuG8Bl6pgmhXfrlrE9sG0z
 u0ozBRjPrd7bF83MaU7l0DcOPNKgLpzU1w/PizmmiQ8+6uF21BEg96I+rVusWt1klboy
 MKSIVvJ994JaCOBDAVy+MGcR6LCeTj7oTuvjC76/vVDqeCbfd2tsbBE5t+KAzrYyKao0
 beq9gMaBB1N6tSGNcuX5M7uysmk0W1wVJG1g86OLS11qCcKjJGoCRpU9WYjSXH1SOls7
 mKBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gqlg9mlQrzOnNuGBRs6FVMKN07w9DfmWW8w0BvZncyA=;
 b=Nf/zkh6Qx9eDr9Iq9wQdqpk1e9fkcF3g16/cPTjmv/ulvWXXk1wRkSmjZo/ovdKCIW
 a+D1gVwGlHUhmcqlr1jFqiQ41WR4AVzQpcpD3WtvOoV0cpKjNKkiqf2glv6drsmft4en
 3Icrq1DQA63wbHNxK8Kks24PFJl1A2ndnfez8r45xYa7KJQZLiUHEXqvgEY2/74MhK6O
 vAlRLdqXmFFSEb1sQmFXWyQSaMBvZBaaqEzA4657ep0ZvJOf4u8MlBvGShJQm+yjfrbr
 0DKSyT3h/0FhR89hKGaXZCqiUCYlVXqe7oUzYxNFaGmFCKaKFuRuDJ/dLyeM9x0R/myp
 zltQ==
X-Gm-Message-State: APjAAAXdJPgMPV9aBynTC45VLHmRNoZ1v1SLoUUucQrlFg55SNoiNRmO
 Rp3WNICCMpNGCN8O+y1tkK0=
X-Google-Smtp-Source: APXvYqxmglgJRzn1GsRQX6RoSwxGtXaN/sU/gd2Qldf0Z6oLMgeyABURq9p9hQ/BaVqb5FMTq03zPg==
X-Received: by 2002:a17:90a:d151:: with SMTP id
 t17mr28842001pjw.60.1560290083167; 
 Tue, 11 Jun 2019 14:54:43 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c9sm18829165pfn.3.2019.06.11.14.54.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 14:54:42 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/7] ARM: dts: bcm-mobile: Fix most DTC W=1 warnings
Date: Tue, 11 Jun 2019 14:54:40 -0700
Message-Id: <20190611215440.10245-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190528230134.27007-4-f.fainelli@gmail.com>
References: <20190528230134.27007-1-f.fainelli@gmail.com>
 <20190528230134.27007-4-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_145444_148128_C05A332F 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>,
 =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Brian Norris <computersforpeace@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 May 2019 16:01:30 -0700, Florian Fainelli <f.fainelli@gmail.com> wrote:
> Fix the bulk of the unit_address_vs_reg warnings and unnecessary
> \#address-cells/#size-cells without "ranges" or child "reg" property
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---

Applied to devicetree/next, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
