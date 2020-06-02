Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EBC1EBEEC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 17:19:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MyJfZaP8JDiw4mXGldY5TYpMdRtJ3YQeMtzPHvH25tY=; b=WgYaY73I/MLCalIpNWCPGTxOc
	kCrOuTyZrP/VueuxHRt8TzTY5xN9Rgsn3EzePSaUYS5KVLt2AK7X/r+rn54CnNefF6/QCZieDNEeC
	da3kRirOUghXNrqb1jbbtyZDZHvMRHTF8cKjcfezrL6/A/Y8KS/MmSI4RN3eyw4F0iL2N2UJ4NQf0
	p+Ab74rHvV4ucRK/FAos+RYr6c4Xwh+AI+gluAt+09ZE7c3KSFvN96Flro4dNwQ0SUNGY06kHGM/b
	kC9SSPmblKwWGKuLccuWg6bMejCHyGRnartQh/EHXI7QdK4KHE0Fs0OFej3aYab8Tw/j2jmhZoAa6
	X2P9WKu1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg8h3-0002ZC-ML; Tue, 02 Jun 2020 15:19:09 +0000
Received: from vern.gendns.com ([98.142.107.122])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg8gq-0002IZ-4v
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 15:18:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lechnology.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fY5IJpcG4taKk/Z1c0/fQ/EvxTolmAQsbeDYBoiR5u0=; b=NtLZtOksQBZaiN/MHofooBohHZ
 yLz+q25OmAY1J1RyUf0/feKCObejImLWtjna8ZQ0uxzyiM0BFAN0yDX/su6TOIdUcGIecBhnEROeu
 rKnMT7PBoOjCgJ5vb0Q1/WYMJJsUi2fad3XkcM2aAX+rmw/oQuHeYgFayIW4DHtjZWCjL0C0JdloA
 EJmFEPCJYbcI0E3MvqUidpxpBsP5vMLJIC0bAfadEuogsfdlzjtG4dLbE1H49nR1ApyieO4qyGQR9
 awbtgQdycWeGLXshgfJT6uoHQIWbLdvRkNat/h/qg5GQs2Rac1w5nmqgjHRft6HUE3aaBO749uASj
 s3W/P9fQ==;
Received: from 108-198-5-147.lightspeed.okcbok.sbcglobal.net
 ([108.198.5.147]:42134 helo=[192.168.0.134])
 by vern.gendns.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <david@lechnology.com>)
 id 1jg8g5-00049A-Lh; Tue, 02 Jun 2020 11:18:09 -0400
Subject: Re: [PATCH v2 0/4] Introduce the Counter character device interface
To: William Breathitt Gray <vilhelm.gray@gmail.com>,
 Jonathan Cameron <jic23@kernel.org>
References: <cover.1589654470.git.vilhelm.gray@gmail.com>
 <20200524172542.31ff6ac7@archlinux> <20200524175439.GA14300@shinobu>
 <20200531161813.658ffdfb@archlinux> <20200531171351.GA10597@shinobu>
From: David Lechner <david@lechnology.com>
Message-ID: <ac473c9a-f9cd-21ae-8f8f-d5181df2c134@lechnology.com>
Date: Tue, 2 Jun 2020 10:18:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200531171351.GA10597@shinobu>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - vern.gendns.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lechnology.com
X-Get-Message-Sender-Via: vern.gendns.com: authenticated_id:
 davidmain+lechnology.com/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: vern.gendns.com: davidmain@lechnology.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_081856_314545_BFA55D81 
X-CRM114-Status: UNSURE (   5.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kamel.bouhara@bootlin.com, gwendal@chromium.org, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, patrick.havelange@essensium.com,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com, syednwaris@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/31/20 12:14 PM, William Breathitt Gray wrote:
> Yielding the following /dev/counter0 memory layout:
> 
> +------------+-----------------+------------+-------------------+
> | Byte 0     | Byte 1 - Byte 8 | Byte 9     | Byte 10 - Byte 17 |
> +------------+-----------------+------------+-------------------+
> | Boundary 0 | Count 0         | Boundary 1 | Count 1           |
> +------------+-----------------+------------+-------------------+

A potential pitfall with this sort of packing is that some platforms
do not support unaligned access, so data would have to be "unpacked"
before it could be used.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
