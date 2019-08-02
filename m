Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A46DD7F7BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 15:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4VZqqYMGuNkuqFEFeNsldmJejcdfDD+09othbzhAwxc=; b=RMq6b1ifeIqOT1
	6mnfBdlitcEhve5GYUsoTne6AlMMO4w84L0sWcfFkOOGTDd8KN+STY7R64rGrIhrPnyQgzv9Y8dBK
	KB4sDzh4pok2GEAV5HYGcp9e2zriRDnz2lr4bHzWLQNMpiQ1p6JLh067ID3bBmKND4TXUUyI/Huy7
	tKOeWeY8Stilxa1iuGPMnpSiOWia5RLls4TVnLY1yuE/CsBw3etOvENWPP1PgT8MiXLXksp/sW+Bn
	NJCrZHg6nT5H2OGunigBuLlNeWBR0suc6H7TN3cGUtLsIrpA5hNxl8JQgqc0TQAtUf3fV6jNCGHPM
	ccVDdnuvTY04rntveBzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htXDX-0005pE-SE; Fri, 02 Aug 2019 13:03:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htXDR-0005oY-8E
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 13:03:26 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1A4D20657;
 Fri,  2 Aug 2019 13:03:22 +0000 (UTC)
Date: Fri, 2 Aug 2019 09:03:20 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Jiping Ma <Jiping.Ma2@windriver.com>
Subject: Re: [PATCH v2] tracing: Function stack size and its name mismatch
 in arm64
Message-ID: <20190802090320.728f133b@gandalf.local.home>
In-Reply-To: <47e90170-e971-c2f5-b6c9-d3c6a694a4a7@windriver.com>
References: <20190801083340.57075-1-jiping.ma2@windriver.com>
 <20190801094156.emo36ekvrm74nndl@willie-the-truck>
 <47e90170-e971-c2f5-b6c9-d3c6a694a4a7@windriver.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_060325_313669_D2AD2587 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 mingo@redhat.com, joel@joelfernandes.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyIEF1ZyAyMDE5IDEwOjQzOjAzICswODAwCkppcGluZyBNYSA8SmlwaW5nLk1hMkB3
aW5kcml2ZXIuY29tPiB3cm90ZToKCj4gPiAqV2h5KiBkb2VzIHRoZSBmcmFtZSBhcHBlYXIgdG8g
YmUgb2ZmLWJ5LW9uZT8gIAo+IEJlY2F1c2UgdGhlIFBDIGlzIExSIGluIEFSTTY0IHN0YWNrIGFj
dHVhbGx5LsKgIEZvbGxvd2luZyBpcyBBUk02NCBzdGFjayAKPiBsYXlvdXQuIFBsZWFzZSByZWZl
ciB0byB0aGUgZmlndXJlIDMgaW4gCj4gaHR0cDovL2luZm9jZW50ZXIuYXJtLmNvbS9oZWxwL3Rv
cGljL2NvbS5hcm0uZG9jLmloaTAwNTViL0lISTAwNTVCX2FhcGNzNjQucGRmCj4gIMKgwqDCoCDC
oMKgwqAgwqDCoMKgIExSCj4gIMKgwqDCoCDCoMKgwqAgwqDCoMKgIEZQCj4gIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgLi4uLi4uCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTFIKPiAgwqDCoMKg
IMKgwqDCoCDCoMKgwqAgRlAKCkFuZCB0aGUgTFIgaG9sZHMgdGhlIHJldHVybiBhZGRyZXNzLCBy
aWdodD8gV2hpY2ggd291bGQgYmUgaWRlbnRpY2FsIHRvCng4NiBhbmQgZXZlcnkgb3RoZXIgYXJj
aCBJIGtub3cgYWJvdXQuCgotLSBTdGV2ZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
