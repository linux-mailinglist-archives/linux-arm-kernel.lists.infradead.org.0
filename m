Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE19B160396
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 11:34:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nLTWZCerDiDkjjg+ZwWyw2lUexBSGOgQ6DpARDl7+44=; b=ZGhO96/gtaDPK9
	30zou19HcrviymvWaNJXTSAWoRSyb1Ka6XFJ1kLcKO6qSnMOORKJ05Kwn/RB5vs9URYTIeElgDFw1
	oaRk18Ti0ve1PJEV3rX/Pl86eRIp7H6fn/SZCsKiqR6uFq3B+Nol+vYM92ewNvfTMASWrTDeTrRtz
	DfGNdAbaDr9VN4PUUGAbdnqknS6Pn5OPeTdSHUo3+sca22qvQYBJOzVLMTrj5tmgFhZ5Ca45ygJrd
	54tMAqMDArfqhdPE1pLT352QaBUsGFXP/SAU/TXK0cpwTPpXpLpUC1r3YzUaZ2skXPbWSEHMJ26PW
	7mWfes8fu2sWxPqP1QWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3HFj-00066E-KS; Sun, 16 Feb 2020 10:34:19 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3HFa-00065k-S1
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 10:34:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581849246;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AyZPiWK74GL/snEzHEB39Hj1J71bF2CTXG08laECY4o=;
 b=QuPd664GhhhwX26sTjXff7JMh2zJWZJrVHoeUq0rKmxYNpvTeRHTSgmWo4V2V1A9p6uQiJ
 UqLHylCK14yHA98WpdDH5ZT62UKbb14pDj5CoyVK3cIEHStAnM3WAdOASTLFtlDg75rudl
 okJC50Mn6uIjFS2XVdGh8u604ml5r1g=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-190-UAONdi7DNdKbL2XwUkEY_w-1; Sun, 16 Feb 2020 05:33:59 -0500
Received: by mail-lj1-f200.google.com with SMTP id r14so4864623ljc.18
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 02:33:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=AyZPiWK74GL/snEzHEB39Hj1J71bF2CTXG08laECY4o=;
 b=m+Rl1Jmiu6CkbCmC6UvKA9isLSkLyBAU650uFhlGbCgMaWvOI2uLWfWue/BRix9PRW
 QOXvsEpfOuqI+fF7KNxhFbLyfWpE+4dn/3XQi+3j0cdzf9EhHOW2Ecx4CqjGIhjSwjr6
 nndOn+/yuz6wpuglaUCDvMHASdLus09/K3n/DBwyL7sUceci40qqb90scnVM0QYCP3D4
 wwOtjJpAJYNvtOAcC4rljN4B67kdK34tEHKLEepgtw7BNtaUDhL6yEuJNuIcvFfDvBsz
 BlX436Eg0bJQNDTJCo5Fc5Pd53ZrgtsyooepqKz168P4AIUYF6QV99UXECzHrz6xktXd
 69EQ==
X-Gm-Message-State: APjAAAXwyv9OA0qoTw+bF3AZXVO1aGqMRZ4GV5sUiOP+dlZZczQhNZsK
 FSeHJGpLgc7FQD+F/3eVXky3CC1TQ8xE69lDg6pu00hixdcqyvvpz3oEnb9IX9GuNv1Mr0aqzYm
 fS1Fvr8MWI53AbhWo8+PceuseBLVz2xPWGgM=
X-Received: by 2002:ac2:5979:: with SMTP id h25mr5823561lfp.203.1581849237901; 
 Sun, 16 Feb 2020 02:33:57 -0800 (PST)
X-Google-Smtp-Source: APXvYqz5CGpNlEjzA8D5rxS5gBw73IyHetdr4xNVSJIqqTnMYikH1e1wBtykq/V+h6jiwZNsqfmBaA==
X-Received: by 2002:ac2:5979:: with SMTP id h25mr5823536lfp.203.1581849237634; 
 Sun, 16 Feb 2020 02:33:57 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id a12sm6454240ljk.48.2020.02.16.02.33.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Feb 2020 02:33:56 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id DED0E180371; Sun, 16 Feb 2020 11:33:55 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>, netdev@vger.kernel.org
Subject: Re: [PATCH net-next] net: page_pool: API cleanup and comments
In-Reply-To: <20200216094056.8078-1-ilias.apalodimas@linaro.org>
References: <20200216094056.8078-1-ilias.apalodimas@linaro.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Sun, 16 Feb 2020 11:33:55 +0100
Message-ID: <87k14mbz3g.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: UAONdi7DNdKbL2XwUkEY_w-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_023410_983398_4BCE0167 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Alexandre Torgue <alexandre.torgue@st.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 linux-stm32@st-md-mailman.stormreply.com,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, Jassi Brar <jaswinder.singh@linaro.org>,
 Jose Abreu <joabreu@synopsys.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, jonathan.lemon@gmail.com,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, bpf@vger.kernel.org,
 lorenzo@kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, Jesper Dangaard Brouer <hawk@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SWxpYXMgQXBhbG9kaW1hcyA8aWxpYXMuYXBhbG9kaW1hc0BsaW5hcm8ub3JnPiB3cml0ZXM6Cgo+
IEZ1bmN0aW9ucyBzdGFydGluZyB3aXRoIF9fIHVzdWFsbHkgaW5kaWNhdGUgdGhvc2Ugd2hpY2gg
YXJlIGV4cG9ydGVkLAo+IGJ1dCBzaG91bGQgbm90IGJlIGNhbGxlZCBkaXJlY3RseS4gVXBkYXRl
IHNvbWUgb2YgdGhvc2UgZGVjbGFyZWQgaW4gdGhlCj4gQVBJIGFuZCBtYWtlIGl0IG1vcmUgcmVh
ZGFibGUuCj4KPiBwYWdlX3Bvb2xfdW5tYXBfcGFnZSgpIGFuZCBwYWdlX3Bvb2xfcmVsZWFzZV9w
YWdlKCkgd2VyZSBkb2luZwo+IGV4YWN0bHkgdGhlIHNhbWUgdGhpbmcuIEtlZXAgdGhlIHBhZ2Vf
cG9vbF9yZWxlYXNlX3BhZ2UoKSB2YXJpYW50Cj4gYW5kIGV4cG9ydCBpdCBpbiBvcmRlciB0byBz
aG93IHVwIG9uIHBlcmYgbG9ncy4KPiBGaW5hbGx5IHJlbmFtZSBfX3BhZ2VfcG9vbF9wdXRfcGFn
ZSgpIHRvIHBhZ2VfcG9vbF9wdXRfcGFnZSgpIHNpbmNlIHdlCj4gY2FuIG5vdyBkaXJlY3RseSBj
YWxsIGl0IGZyb20gZHJpdmVycyBhbmQgcmVuYW1lIHRoZSBleGlzdGluZwo+IHBhZ2VfcG9vbF9w
dXRfcGFnZSgpIHRvIHBhZ2VfcG9vbF9wdXRfZnVsbF9wYWdlKCkgc2luY2UgdGhleSBkbyB0aGUg
c2FtZQo+IHRoaW5nIGJ1dCB0aGUgbGF0dGVyIGlzIHRyeWluZyB0byBzeW5jIHRoZSBmdWxsIERN
QSBhcmVhLgo+Cj4gQWxzbyB1cGRhdGUgbmV0c2VjLCBtdm5ldGEgYW5kIHN0bW1hYyBkcml2ZXJz
IHdoaWNoIHVzZSB0aG9zZSBmdW5jdGlvbnMuCj4KPiBTdWdnZXN0ZWQtYnk6IEpvbmF0aGFuIExl
bW9uIDxqb25hdGhhbi5sZW1vbkBnbWFpbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSWxpYXMgQXBh
bG9kaW1hcyA8aWxpYXMuYXBhbG9kaW1hc0BsaW5hcm8ub3JnPgoKVGhhbmtzIGZvciB0aGUgaG91
c2UgY2xlYW5pbmcgOikKCkFja2VkLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VA
cmVkaGF0LmNvbT4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
