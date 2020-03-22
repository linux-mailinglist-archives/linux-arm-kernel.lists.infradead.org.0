Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA6F18E975
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 15:50:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hyJen+uGyHtxLnkE9X0T/GJ77oEVFA0zdk1EnT0sW6Q=; b=ENl3Kn8ouk8MwZ
	WnvJrqxrhRFKANZKYABN6kXxePHkj6nh4nTYqp6zRcGb0SYr6SIx5Ixzy0jkOCLpYTCRlkLOdFbIa
	qAqS+dXp1dY3SQcNaeyC6DkXVv8nqCZ0aRmWAJU1k6zAwD/DJAjyjBZUj07u2N1h3wRDwoy/hrCJ0
	16T+BlyAFXAAqH7ztcSIHF+NeW04prnw41iq59zhaGXXil5Tjm5evwlXC6znMRUrj8sBsksJPadJ8
	AKI3HCF5fIe5kFqf5Ls6wPJqHs4vD3MULgJSSxX6OI3KOzIhk5PXXry2TELu27jswUkWYoyBdmJuB
	oETBJjtiQr2e3EPEW54g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG1vt-0006RI-1o; Sun, 22 Mar 2020 14:50:33 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG1vk-0006Qr-PO
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 14:50:26 +0000
Received: by mail-pg1-x542.google.com with SMTP id t3so5814038pgn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Mar 2020 07:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VzpMsaGUucPpP6fSW/cSM6C+7riJcwDU7MFrk8qZK08=;
 b=A+wyUWCyuSGbBGYrVxL3lfpAMEm9Pw7lyM1JfznsrrtgMW/o6IzzRGitu4S4esNGpi
 8Ee78r+qIGkf45lpvlDrcRjhgDtARjTA/HFA3m2CHQISObO0vJqixQI6XTNulD+VxxMV
 Ac7RW9icnj4MN1AJfv6kTVT2sq84yKep5ghOOqZ2SHiCfj68EAKTIu46hbFFhLsNxk77
 dYvyOjYv8rHyGxlZ0IXpgt6Cz0Mj9A+eFS20jNm7RtLw9EaSHfJikcrDvlymvinrn+00
 ij8YnbvINbjAQsnoOdKd3n795yaUqPJ2ZdWZEC7tladhIE1FDzVAklYUGTR+Qj/9FrdU
 WHWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=VzpMsaGUucPpP6fSW/cSM6C+7riJcwDU7MFrk8qZK08=;
 b=X71k1vj6CyetOJOsdKggHuRNWPa8h2OvanIybKtWbn1ej3te/QwLEHBzYiEDeIqfRQ
 bXBk0n/bY7/tCVVrWf971w19FWmgIPYtOTRBjKEsSRrzek7IixpGxPAD+cSgcE8Hj0cY
 f/hs8LOhflcuU1xfKK3o/3ctSlzY6405GUUNll3nvKuozMQZaSIXOGyli3y8kvPyjJN4
 Jfnu52MH5i1RXj1a35R1cZwMhjMtBW1h7WfqaQ6wLme80N8RXw1TcYtrf/RdyK9xMR9U
 bKolAqqjYHJCEnn0VcpeLt9EBnNQaK1tpWlO/UjdReb6RaqpMEzsLH/lA7SS+dtIM3gc
 s0Vg==
X-Gm-Message-State: ANhLgQ2HKAyWXdOoPxgswpAbxFhzd/NpoJwI6+jSBsHWNTZtZ8anNvqQ
 D3lwco2j9f+MIR+MSSkTftKWkizj
X-Google-Smtp-Source: ADFU+vsC3unH8wqa2M/Kjr8Fps9W1SvqISpzPCWWajii9wOO7dTp9OThgGswhR+FbVFnRd+cWKO23w==
X-Received: by 2002:a62:b613:: with SMTP id j19mr20415336pff.90.1584888623675; 
 Sun, 22 Mar 2020 07:50:23 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id p9sm9666063pgs.50.2020.03.22.07.50.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 22 Mar 2020 07:50:22 -0700 (PDT)
Date: Sun, 22 Mar 2020 07:50:20 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V5 5/5] PCI: tegra: Add support for PCIe endpoint mode in
 Tegra194
Message-ID: <20200322145020.GA2040@roeck-us.net>
References: <20200303181052.16134-1-vidyas@nvidia.com>
 <20200303181052.16134-6-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303181052.16134-6-vidyas@nvidia.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_075024_827570_D3252E64 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mmaddireddy@nvidia.com, kthota@nvidia.com, gustavo.pimentel@synopsys.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, jonathanh@nvidia.com,
 linux-tegra@vger.kernel.org, thierry.reding@gmail.com,
 linux-pci@vger.kernel.org, bhelgaas@google.com, andrew.murray@arm.com,
 kishon@ti.com, linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 11:40:52PM +0530, Vidya Sagar wrote:
> Add support for the endpoint mode of Synopsys DesignWare core based
> dual mode PCIe controllers present in Tegra194 SoC.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> Acked-by: Thierry Reding <treding@nvidia.com>

ERROR: modpost: "dw_pcie_ep_init" [drivers/pci/controller/dwc/pcie-tegra194.ko] undefined!
ERROR: modpost: "dw_pcie_ep_linkup" [drivers/pci/controller/dwc/pcie-tegra194.ko] undefined!
ERROR: modpost: "dw_pcie_ep_init_notify" [drivers/pci/controller/dwc/pcie-tegra194.ko] undefined!
ERROR: modpost: "dw_pcie_ep_init_complete" [drivers/pci/controller/dwc/pcie-tegra194.ko] undefined!

Either the symbols must be exported, or the driver's Kconfig entry must be
bool, not tristate.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
