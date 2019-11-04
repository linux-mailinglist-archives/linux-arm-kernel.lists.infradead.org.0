Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D07D6EE866
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 20:31:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6I+FOPklODllD3DJk7vrV8xaSCBALicVXGFS0iD+z8=; b=OCviBFXAEYIGGk
	2QT9dGepTkXNKMJdM/vvrZbTtczvo/H4i/c/rQHV+xQ0pqYldBf6E8xFiHNVm/BGkyudDPwI+V35d
	vBtDXx7OcRz0Vl5HJR64aHyZ5qUL3FaN0pvd/PCcdAuIRN81tg4qwltU7C4yAXEjJQnSwsqVugKPG
	itI95ZWvveSwLQfcVIUpjA1j3/z8Sh8eCYzd4StyeXtRveCpRH3MrjiRR88Xy3amh9A28yfj95BRN
	SHFC0nQegV/mrfiGqYsna6slzQqYku2g3kMM5FZb1R1Gg7JTQzwJDEA1zciEsASxkMj0bgo60E3qI
	tPvJgG5PrlVVzrTnJ1kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRi4p-0002c7-4p; Mon, 04 Nov 2019 19:31:47 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRi4h-0002bb-L4
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 19:31:40 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 108EC151D4FBA;
 Mon,  4 Nov 2019 11:31:32 -0800 (PST)
Date: Mon, 04 Nov 2019 11:31:31 -0800 (PST)
Message-Id: <20191104.113131.1498438752773891509.davem@davemloft.net>
To: christophe.roullier@st.com
Subject: Re: [PATCH V2 1/1] net: ethernet: stmmac: drop unused variable in
 stm32mp1_set_mode()
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191104105100.4288-1-christophe.roullier@st.com>
References: <20191104105100.4288-1-christophe.roullier@st.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 04 Nov 2019 11:31:32 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_113139_690387_451EF99E 
X-CRM114-Status: UNSURE (   6.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, andrew@lunn.ch,
 mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso8859-7"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQ2hyaXN0b3BoZSBSb3VsbGllciA8Y2hyaXN0b3BoZS5yb3VsbGllckBzdC5jb20+DQpE
YXRlOiBNb24sIDQgTm92IDIwMTkgMTE6NTE6MDAgKzAxMDANCg0KPiBCdWlsZGluZyB3aXRoIFc9
MSAoY2Yuc2NyaXB0cy9NYWtlZmlsZS5leHRyYXdhcm4pIG91dHB1dHM6DQo+IHdhcm5pbmc6IHZh
cmlhYmxlIKFyZXSiIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVd
DQo+IA0KPiBEcm9wIHRoZSB1bnVzZWQgJ3JldCcgdmFyaWFibGUuDQo+IA0KPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpc3RvcGhlIFJvdWxsaWVyIDxjaHJpc3RvcGhlLnJvdWxsaWVyQHN0LmNvbT4NCg0K
QXBwbGllZCB0byBuZXQtbmV4dC4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
