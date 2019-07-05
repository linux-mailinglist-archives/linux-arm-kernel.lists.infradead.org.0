Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2491B60DD4
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 00:29:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0t0TSxUGqS2cXZDAhti4kg0nJ5Y4yGufAc3jWFvoCLc=; b=HLyCHbiNDRWP6S
	4D5P4jgLQSzn624+JtJ7nD8AeZXm4xNmedOJt2Sl3Ls1J1fzcYa63ir2zPav80sCmJDLP2n3Gn9v6
	IQPbdWhbI1TM9EV/RgNEkAs5duSwyXOkSsryBhsZqSDT9rSVb1Riu/L9D5tetRKHCQ160YAhGohx5
	uQN4JPUKa8z21T++xSGVdyRUJf/nfcZvoLioUG8ZeqJSlEx24exwNkRHjVnZs8q6ekYwEw/EOLDTs
	OUl5d0Kp+XFHBLR0xQo5o8U6qtd0uO7kTWp/iWry95VzZTlm27G8DdaKqYikUPU47dGhvYrT4ChB+
	RUhz5cK/RtkIJdbNJq6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjWhz-0001FK-Ia; Fri, 05 Jul 2019 22:29:35 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjWhk-0001Eg-TQ
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 22:29:22 +0000
Received: by mail-io1-xd41.google.com with SMTP id k8so22200906iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 15:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A2xFeB/vxfBJWIi2SCTq+vsVIJL+pCcb0P3THlDfvNk=;
 b=hycMa+7f59LmBeoZx7y+T6iB+NqeRfKUCiEwPvr1G17qNMYTgFWeGgJnfHmpt58y3R
 pE2x4OswYZw80bCfWurEXT3RSUYQLZGIm/hAun3Zsi1gdbn1j5dxcQTLo8sHPU+Ciz7o
 iDfQh6cgbrxML1qV0b61RieVtvOF/c3yjVMQI4kcnTJHkz3r+Xp2keXGFHneyVDSqFe6
 g4Yik34C0kIqHBkyqItwiZt00TrFmr8pZUvduDej+ANXqBVq2TKmE0PkuRWaAIypt0tb
 5n+qAkievhL51pi8/Pk3ZX+Zpn0q4OOrs0azQb3ZvUf+vI+YpFAf4M4GatHRVj+GVVUc
 2Mog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A2xFeB/vxfBJWIi2SCTq+vsVIJL+pCcb0P3THlDfvNk=;
 b=gmxsWVVy6KrNC8t104bjqzgNrQTXFtgdqSxyhg4TxGSeD9GURV/iPQRgwPBSSW/nbQ
 TwRV6RbIwPTbsL9dTGq0gw54dymVRxwjOTHCVYNclYpdGDsJBy5W7mRpHPaszwvNatZh
 0FOM1jDDXnedj3NNCgdZ0R/QKwhIvu5lYgr2jGg22PveA5MjSIY0QjcfLZ6GCI3D01wC
 dsV0u6i09jIN1byTCBpPc+QPgIR030GO1jg8f70v6ksyJ3G943gw6dcKUAtOqqhKuQg7
 xH3TaJd2q0srJgmiaL1B7ChspMg0DFdsF3xboVpZflM56ujzLH7IEpqykIq3Kc3wxGy7
 uCyQ==
X-Gm-Message-State: APjAAAUujP2fLsN00mbwpAqUfMtvChmdnUu9Q89PmcRVA1Ay+gzIlSCl
 DEs7YNso5rlPt2oRFxCrQ8C+U2WJgLb7gET3ELkuvA==
X-Google-Smtp-Source: APXvYqwtqdru004WFVZFoC69PGQmOPnOHdWCXRH4144sBC3NkbqjrE+G/DO1ByoQUCVa7iOf555pJHgtt5vr645kXJM=
X-Received: by 2002:a5d:9642:: with SMTP id d2mr2393845ios.278.1562365759537; 
 Fri, 05 Jul 2019 15:29:19 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1559635435.git.baolin.wang@linaro.org>
 <15AEA3314E88B01E.21242@linux.kernel.org>
In-Reply-To: <15AEA3314E88B01E.21242@linux.kernel.org>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 5 Jul 2019 15:29:08 -0700
Message-ID: <CAOesGMjdnQuLdvphBDM3xmH6o+Nca8+65mw8-EajV0Eb_8MS5w@mail.gmail.com>
Subject: Re: [PATCH v2 1/9] mmc: sdhci-sprd: Check the enable clock's return
 value correctly
To: patchwork-soc+owner@linux.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_152921_014533_D3512C62 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, ARM-SoC Maintainers <arm@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Baolin Wang <baolin.wang@linaro.org>,
 Lyra Zhang <zhang.lyra@gmail.com>, linux-mmc@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 5, 2019 at 3:25 PM Olof Johansson via Linux.Kernel.Org
<olof=lixom.net@linux.kernel.org> wrote:

Hmm, well, that didn't work like I expected to. Sorry for the noise.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
