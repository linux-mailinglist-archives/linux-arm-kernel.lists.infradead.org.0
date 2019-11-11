Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E552F8181
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 21:46:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5TuWthg44gDPwAmtPeux1oADvZqlmOWvyC38Gd6xKc4=; b=j7XSxnh0qXdSOa
	4NVDnRwRqmZ6AngifiNJHMRDlzr5V5a+e+jw3AJ4xt3rf3aMuEHTebZc61lUJegfS3Z8V3QatEQAv
	V4S+48WoybgW1WCxoJ6ue3Yi/iYHW6Sd4CFtHCxK+hZ+coNhuViFsyJ8e9h0CmlmsZSG3GHH2LFBF
	VxbcrtXgyPVS6rmxpeNz5ls/kiW1J7eDrkP6b++J5H9Bc6rUrvs8L4P7fne/olF4rEzq7Df4gC/5r
	gZ7brKLRDQpuW/Mfx2Uzj6NeqhkFSlBV7MvTGEo42LTdB80UDS4ZCDsscDwrkmBbixwBTzojJgxly
	hobkkVJuLluGsIW3mV4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUGZd-00080A-Gc; Mon, 11 Nov 2019 20:46:09 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUGZU-0007zi-Rk
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 20:46:02 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id F21F68047;
 Mon, 11 Nov 2019 20:46:36 +0000 (UTC)
Date: Mon, 11 Nov 2019 12:45:57 -0800
From: Tony Lindgren <tony@atomide.com>
To: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] OMAP2: remove unused wakeup_cpu
Message-ID: <20191111204557.GY5610@atomide.com>
References: <20191106120605.11571-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106120605.11571-1-ben.dooks@codethink.co.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_124600_932119_2144A27D 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: linux-kernel@lists.codethink.co.uk, linux-omap@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgoqIEJlbiBEb29rcyAoQ29kZXRoaW5rKSA8YmVuLmRvb2tzQGNvZGV0aGluay5jby51az4g
WzE5MTEwNiAwNDowNl06Cj4gVGhlIHdha2V1cF9jcHUgdmFyaWFibGUgaW4gb21hcDRfZW50ZXJf
bG93cG93ZXIoKSBpcyBzZXQKPiBidXQgdGhlbiBpcyBub3QgdXNlZCBhZnRlciB0aGlzLiBSZW1v
dmUgaXQgdG8gZml4Cj4gdGhlIGNvbXBpbGVyIHdhcm5pbmc6Cj4gCj4gYXJjaC9hcm0vbWFjaC1v
bWFwMi9vbWFwLW1wdXNzLWxvd3Bvd2VyLmM6IEluIGZ1bmN0aW9uIMOib21hcDRfZW50ZXJfbG93
cG93ZXLDojoKPiBhcmNoL2FybS9tYWNoLW9tYXAyL29tYXAtbXB1c3MtbG93cG93ZXIuYzoyMzA6
MTU6IHdhcm5pbmc6IHZhcmlhYmxlIMOid2FrZXVwX2NwdcOiIHNldCBidXQgbm90IHVzZWQgWy1X
dW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCgpJIGhhdmUgYWxyZWFkeSBxdWV1ZWQgdXAgYW4gZWFy
bGllciBzaW1pbGFyIHBhdGNoOgoKNTM5NWI1NTU3YWNiICgiQVJNOiBPTUFQMis6IFJlbW92ZSB1
bnVzZWQgd2FrZXVwX2NwdSIpCgpUaGFua3MsCgpUb255CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
