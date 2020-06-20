Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3670C201EEB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 02:04:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SJnzLJGrGsvb/maVHViaxIBEMZVjq/tPb7W8T4bX9+s=; b=rskiq26svMBwR/
	1hy/BQMJuLT43LPmXpOo2yLvApHYLCvLKMm7KYpUmd3PR/MCz/PIqvnpHud1z5+0Dd2eFYteQSprx
	IsQq0MUoJ9cW911PsOAEMHGsfvaAsO2OVvbbrIXiioF9wF16uDxF6T3sS7Rr2kTMjLxXok+MHySU+
	+7fpVSQnR+u7nvcShUXohe8j8ciFaA3dnc+q9sQsA5AT14fsm8x5Xf29ta+g/cUGOd9PAItiXYSZc
	h6FvLou0G8m6bDu4JmA+9AooW2JeRrl3yba8iHZnqckT7lB4YfdJ2oMDvFszngo0vA/0CLWem55Yx
	czhrmtoX4IA1II7Al+qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmR05-0007KF-H3; Sat, 20 Jun 2020 00:04:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmQzs-0007Jq-3R
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 00:04:38 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE34822517;
 Sat, 20 Jun 2020 00:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592611475;
 bh=2+koFjxUyxG7gOIAa45WqiL2uCqSxXOyAfKJAXMA05U=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=TFzX/ChDpdSTQU4KFVcgFH/0VACNU2RSuA2OxAWAnhV9+ZbZ7hKJT51g5ce6s2BNv
 XSEf4JRbzgH9023+MEK8bZpbKVefZE6wErKfSBB0PDv10T+2sEqDA1VO5ru/RTS9Q9
 YBu439L2O24n4LHlFNJWfN91NGJsv0kACdtjy4IQ=
MIME-Version: 1.0
In-Reply-To: <20200615090231.2932696-2-noltari@gmail.com>
References: <20200615090231.2932696-1-noltari@gmail.com>
 <20200615090231.2932696-2-noltari@gmail.com>
Subject: Re: [PATCH 1/8] mips: bmips: add BCM3368 clock definitions
From: Stephen Boyd <sboyd@kernel.org>
To: bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com, julia.lawall@lip6.fr, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, lkp@intel.com, mturquette@baylibre.com, robh+dt@kernel.org, Álvaro Fernández Rojas <noltari@gmail.com>
Date: Fri, 19 Jun 2020 17:04:34 -0700
Message-ID: <159261147497.62212.1476393708659988234@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_170436_161127_C65B0879 
X-CRM114-Status: UNSURE (   5.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Álvaro Fernández Rojas <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UXVvdGluZyDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgKDIwMjAtMDYtMTUgMDI6MDI6MjQpCj4g
QWRkIGhlYWRlciB3aXRoIEJDTTMzNjggZGVmaW5pdGlvbnMgaW4gb3JkZXIgdG8gYmUgYWJsZSB0
byBpbmNsdWRlIGl0IGZyb20KPiBkZXZpY2UgdHJlZSBmaWxlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgo+IC0tLQoKQXBw
bGllZCB0byBjbGstbmV4dAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
