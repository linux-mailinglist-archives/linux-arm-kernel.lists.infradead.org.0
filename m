Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D577D40E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 05:49:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H778GAovD/Jt8s7d0hH4nc3mA8kpgCe40mo1g7UD3NQ=; b=kueAbYCNhefAljILHvoQGdgZp
	SUBwEGumS6IKGYNR6g/tDL3Z7HhqNwpCDwuHLsclRRBvuxlkqjGt8DlqldrM/heRAFeT1A3bV4wyu
	csMTPpSYAUA1ervwIhXzDfmkplXt1RipaSDicBINdQCx//MT/psFMXCAVHIOnythVir6aUbLEWM+P
	bDiFaYQh1uZF3ugS/SrQXsvzhsd5v0a74z5H51DkqiTVwaBwE35ugglQFMZC0CrL8BsqTIhlyFmB0
	sqMobbm6u+K9EMT2Zz2DbOdJQCQX5Jq2zCcQWbThHjD4I/n1kpeRQwrRcRJOCeyiKls9Div5tuSqe
	YbBhdSM1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht26B-0000wq-0I; Thu, 01 Aug 2019 03:49:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht263-0000wX-P6
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 03:49:44 +0000
Received: from [192.168.1.20] (cpe-24-28-70-126.austin.res.rr.com
 [24.28.70.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D5821214DA;
 Thu,  1 Aug 2019 03:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564631380;
 bh=dhmufFFEc/FwdTv9wt4Snp3wkGaxzDFn5p1Cx5zR0ps=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=e2Z2UNoPKaCylv7i7oS3glTW3qQ04iLJCN8apdiQvdayfYYKewH2o3IfkzFUnQSKK
 3zsUD4JYQPade5R19KNtuoLWNQfuuFgdiMPO5BjqfzyXWxNP158xZ2i1W0ZQsEYxR7
 b+fTb8m2MXJLwEYHswQ3zh/DD9NcrVZ5fqz7MKQI=
Subject: Re: next/master boot: 265 boots: 17 failed, 184 passed with 64
 offline (next-20190730)
To: Jeffrey Hugo <jhugo@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Lee Jones <lee.jones@linaro.org>, Linus Walleij <linus.walleij@linaro.org>,
 Mark Brown <broonie@kernel.org>
References: <5d403574.1c69fb81.14163.65d3@mx.google.com>
 <20190730134115.GE4264@sirena.org.uk>
 <CACRpkdYevQiwW8iED8_qBo5yCcj5yCGrM76Lu3MyrU6Vy4HoNg@mail.gmail.com>
 <5d41b01a.1c69fb81.84578.a0bc@mx.google.com>
 <cbbe381e-a154-ced1-fbcb-9db2135e4e5b@codeaurora.org>
From: Timur Tabi <timur@kernel.org>
Message-ID: <c2e5cd69-2f95-fc47-4541-17a1d744f003@kernel.org>
Date: Wed, 31 Jul 2019 22:49:38 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <cbbe381e-a154-ced1-fbcb-9db2135e4e5b@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_204943_841696_19DDF70A 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Lina Iyer <ilina@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kernel Build Reports Mailman List <kernel-build-reports@lists.linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNy8zMS8xOSAxMjo1OCBQTSwgSmVmZnJleSBIdWdvIHdyb3RlOgo+Pj4KPj4+IFRpbXVyL1N0
ZXBoZW46wqBhbnnCoGlkZWFzPwo+IAo+IFRpbXVyJ3PCoENBRsKgYWNjb3VudMKgaXPCoG5vwqBs
b25nZXLCoHZhbGlkLMKgScKgYWRkZWTCoGhpc8KgQGtlcm5lbMKgb25lLgoKRGVsZXRlIGV2ZXJ5
dGhpbmcgc3BlY2lmaWMgdG8gdGhlIFFERjI0MDAuCgpRdWFsY29tbSBoYXMgbWFkZSBpdCB2ZXJ5
IGNsZWFyIHRoYXQgdGhleSBoYXZlIG5vIGludGVyZXN0IGluIGRldmVsb3BpbmcgCkFSTSBzZXJ2
ZXIgY2hpcHMuICBObyBRREYyNDAwIHN5c3RlbSBldmVyIG1hZGUgaXQgdG8gb2ZmaWNpYWwgcHJv
ZHVjdGlvbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
