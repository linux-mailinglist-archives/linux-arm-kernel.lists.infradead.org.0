Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5900DAAD8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 13:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E2KfyU9Y9GhI1mxcYNJKf2FhbXHvGTR4FBcRb1vDGHI=; b=ISX6WI8jkLKykT
	Zp1axR/MCtUJd5/ch9dqNbgmqqXpw6haTXIakv8wLzXeDRY/sjLfvffsl8pOldKUaAUrC3hVhZmHY
	eXOaAQ0xk2Nzv21txGjfv8nkpacitBTAGL10ldqEgfKb7a465600ZoKQFD4FaVTPc9iZFaQC0uFv6
	DeVKLdNGrSEomrkE11BItLmD3X0rVsTmFZIhStii/2LAoBl7qPxDzQD8F0iptRwOHQSAO17yfVWp0
	LcWcDnSscrupOjIi82XJzgRoj62q70T8sPkfQsmhzXZABUarmlBLnokJx+10D16ZysGufLgZhhBz4
	43kRWun7Iih+pw4pJCMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL3d0-0003LN-ER; Thu, 17 Oct 2019 11:07:34 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL3cr-0003KJ-Jt
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 11:07:26 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9HB7K1a064246;
 Thu, 17 Oct 2019 06:07:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571310440;
 bh=gGHXuaGN6JWtNLkiVaFXPm/K1WA5sPtAM5owozosUj4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=SXqiXIX52GQ1nwaIZ0TlJqA/ZiugfcL1FvnC5U0t4UfqZtoOdy/7lgp/CRrhnG7Z6
 CBuQhGrsQl6iX658NhAHg6yVchrj0o9QAQKVtHgbGbCDv9qfs2W/rTnTlefuqr3LHe
 gZ5Hd1t0K5a3thM8xNTiVweF1qh01vWgMhnht5u8=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9HB7KBG042799
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 17 Oct 2019 06:07:20 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 17
 Oct 2019 06:07:20 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 17 Oct 2019 06:07:20 -0500
Received: from [172.24.190.212] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9HB7Hjo032997;
 Thu, 17 Oct 2019 06:07:19 -0500
Subject: Re: [PATCH] ARM: davinci: dm644x-evm: Add Fixed regulators needed for
 tlv320aic33
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <bgolaszewski@baylibre.com>
References: <20190830102308.22586-1-peter.ujfalusi@ti.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <e6a03603-a901-56a8-c8ad-d528f2d51595@ti.com>
Date: Thu, 17 Oct 2019 16:37:17 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190830102308.22586-1-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_040725_735048_D2E55DF7 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/08/19 3:53 PM, Peter Ujfalusi wrote:
> The codec driver needs correct regulators in order to probe.
> Both VCC_3.3V and VCC_1.8V is always on fixed regulators on the board.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

Applied for v5.4

Thanks,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
