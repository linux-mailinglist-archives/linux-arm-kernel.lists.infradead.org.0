Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC989F042
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 18:33:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ua1ss3E2UU4wiN7E46HsI64G+8cFRNiK6RXMGbIn4RM=; b=gpCPo02upXLPGv
	ba8u1lPkOrXhnlk3tPjxhsXo8xqIfC4XUS4OHlcTeWuaHlHH/Vep7Rfs7j35dNMJ0vZg1FMB4u+rF
	V+VTW7wx63vUmpDmPA2OpnNVaEnV/W+oW16CeBktTt7WlPWPpnLtkPM8qDMfTVlR8NZYc2rQoSTBF
	nW5azJtcLWRP2eloCVA6NmIbCOwg417UDwBGOqicXR0Lo0UGWsRMCE76sd7nbR530ePz+k0UOz02u
	EVDkWu1a4jSvlL/JRwqLdqoPdWuASDuGlS7RxuxZKRNnajv3DEnMqAEX8DEpZky9ldPDsPYa5Tj6n
	MORg4VkuQH/H8C8k2Lzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ePR-0004CI-TB; Tue, 27 Aug 2019 16:33:29 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ePH-0004A2-3V; Tue, 27 Aug 2019 16:33:20 +0000
Received: by mail-oi1-f195.google.com with SMTP id n1so15451351oic.3;
 Tue, 27 Aug 2019 09:33:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UzdCUGlHV5X682Kzeexag26wntDzMS6Jj26RZbJJmdQ=;
 b=FfkpEUfFhPFyzNe/6bFWVbtomQD6HNWiXULOJMmv2iicm0dh+7zzCt4eZ3ob5rDWvN
 Ebj1gph6oB90GUr7K395o+eun1c5ZmHwVWHoUH6iS+8CQbmbyMLCHPXHqndczfAMcWzH
 IOpDonpLfLCPtniZnkbrf6Zh9E2b5SKRTQ1feJ0u9vKa25I3va2tnbW4M8I8Bn4vpdvq
 KzROjX0AizuQqlBZo5soBvETxJAM/LAug67rS4CR8gkPWUS5n73zT3YF1LLBntDOBnv0
 eFdk+qiMZ2aY/Ws+tg0iObaPUcpGT+RI5DNycWTb2WEFaTdlJ8BU+7jIivx6q93ffXa8
 lmtA==
X-Gm-Message-State: APjAAAWSsKd/anP7jGjEcFRu5kt/TWiWiZN40cXWuSpWMV3MdM41kQL7
 LcxU+yU4u5gI9d9eSuzAoQ==
X-Google-Smtp-Source: APXvYqyLYFFzwrl9JxWS98fBy8t+nwRyuksVVJLjy7fG7gUGnBOGgC7pm9hA0aqSzS12hgYwHLc/rQ==
X-Received: by 2002:aca:f5c1:: with SMTP id t184mr17262932oih.25.1566923597041; 
 Tue, 27 Aug 2019 09:33:17 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z9sm4341038oid.39.2019.08.27.09.33.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 09:33:16 -0700 (PDT)
Date: Tue, 27 Aug 2019 11:33:16 -0500
From: Rob Herring <robh@kernel.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v6 01/13] dt-bindings: mfd: mediatek: mt6397: change to
 relative paths
Message-ID: <20190827163316.GA31496@bogus>
References: <20190818135611.7776-1-frank-w@public-files.de>
 <20190818135611.7776-2-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818135611.7776-2-frank-w@public-files.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_093319_147992_1D8EFD6E 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "linux-arm-kernel @ lists . infradead . org Alessandro Zummo"
 <a.zummo@towertech.it>, linux-pm@vger.kernel.org,
 Frank Wunderlich <frank-w@public-files.de>,
 Josef Friedl <josef.friedl@speed.at>, linux-kernel@vger.kernel.org,
 Tianping Fang <tianping.fang@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Eddie Huang <eddie.huang@mediatek.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 18 Aug 2019 15:55:59 +0200, Frank Wunderlich wrote:
> paths in dt-bindings should be relative as suggested by Lee Johnes
> 
> Suggested-By: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> changes since v5: splitted from dt-bindings: add powercontroller
> ---
>  Documentation/devicetree/bindings/mfd/mt6397.txt | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
