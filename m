Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EA4ED9F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 08:39:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cuGR/Rw6/eepWCk4tUyPIEFJoif5ZmN/EpV8K/9KeaM=; b=E/K7ZwnJy1ORTq
	ciZuREzO+FHvY9wdz43ALmKYtzsp0Ne5A4c3wc3FvTSFKgqXAQqGY+hqHAARz1guWVdvya6JglMq2
	ll0X54qjYrBxkIJMaTX5kYYL7Q1xHHpEa+h5qDygmK/ER/cKoDxOCz0PdjL+jScldprchHOd1RznT
	Cj4TMeF+E/s1Tlx0dfpnZLruY36oqMxQYakHNr+mks+KN/O19GIUp0TSCrhoOY3fDDF+FucgffYCh
	f1iRgNY8zpAKm2fIToShAl8kD5v8Lzz7f3oBhX6wBJqbja6kYZ75hxUy0PYhOl/XTgZCSlMU1yFPw
	nUQ6t19w5xRZEVKmoO0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRWwv-0004Jd-PN; Mon, 04 Nov 2019 07:38:53 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRWwo-0004Ce-HT
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 07:38:48 +0000
Received: by mail-lj1-x241.google.com with SMTP id e9so3096935ljp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 23:38:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Skx+IlvEjbz4Ey3Z8Es5BpI/gDpf4xIU9seBvakWE2o=;
 b=fKyAoSLbBB7K6Hwz7WQ1hkLB8UolD91873nvpgYDwu3vHgk9FskSurtOXN9GkL1c/5
 O1QO4r/LPsSNuj4aQkwxPg2auKprW4F4lCLH/I6JsLtqOEwdNwfRS8W2sWECsVQqK6CO
 JdWAYkhmIGvDXKDiJ6rIDpzfpG3P7N4TPq36U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Skx+IlvEjbz4Ey3Z8Es5BpI/gDpf4xIU9seBvakWE2o=;
 b=miws2gxTLxDrQds+eOijpo3NsQL51a4ne8CK1hfhp+lTca1a6ucxv1e3Y7EHOrbzPd
 Tl+Zg0L9SN+Ox9UwZGlLIhsdc3UsgwVjw6A9BNdJCTXNwHBmVHpnObK6kxUnC41DAX7u
 3bSjy/AuOUDtqihUhFZiBatZkOM/2JIOqCRSbkXxFtjFyhz8gehZdQLFt1DC6TWDKurX
 0o2IvWYFZT1vH+VuTGuWGTrh9RooVfaadvPBvUiY0Lo566duMHoMTu4XnpPe53v0KtBC
 vGkXJA0PXlVwhVmIUpEgI3Ng5dhoo6z4tsIcr8Hnmn2Eb+TuPyrq0cAB8s4YdBf6V4s4
 B3lQ==
X-Gm-Message-State: APjAAAVNPvm2cKyvlYLP5v7/knTGef9z9FdwAG/iIOneicaRr4Tmk7G4
 3SLPrtIKXa9U7rMl8Q5F6GSeCQ==
X-Google-Smtp-Source: APXvYqy0dojhXdV/Wyv7nl7DnnJ1xyl+IlR4kyBZvriN/BA2WM6WGs9kvJj6pwDEOoKIklqLOYQZtg==
X-Received: by 2002:a2e:5d1:: with SMTP id 200mr18228489ljf.50.1572853123654; 
 Sun, 03 Nov 2019 23:38:43 -0800 (PST)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id c5sm6344575ljd.57.2019.11.03.23.38.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 03 Nov 2019 23:38:42 -0800 (PST)
Subject: Re: [PATCH v3 28/36] serial: ucc_uart: explicitly include
 soc/fsl/cpm.h
To: Christophe Leroy <christophe.leroy@c-s.fr>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-29-linux@rasmusvillemoes.dk>
 <a921b57b-04d5-4874-89e2-df29dfe99bfc@c-s.fr>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <0acb2e96-3485-5e49-bed1-8deb2051cb91@rasmusvillemoes.dk>
Date: Mon, 4 Nov 2019 08:38:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <a921b57b-04d5-4874-89e2-df29dfe99bfc@c-s.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_233847_527500_067CA3AA 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDEvMTEvMjAxOSAxNy4xOSwgQ2hyaXN0b3BoZSBMZXJveSB3cm90ZToKPiBMZSAwMS8xMS8y
MDE5IMOgIDEzOjQyLCBSYXNtdXMgVmlsbGVtb2VzIGEgw6ljcml0wqA6Cj4+IFRoaXMgZHJpdmVy
IHVzZXMgI2RlZmluZXMgZnJvbSBzb2MvZnNsL2NwbS5oLCBzbyBpbnN0ZWFkIG9mIHJlbHlpbmcg
b24KPj4gc29tZSBvdGhlciBoZWFkZXIgcHVsbGluZyB0aGF0IGluLCBkbyB0aGF0IGV4cGxpY2l0
bHkuIFRoaXMgaXMKPj4gcHJlcGFyYXRpb24gZm9yIGFsbG93aW5nIHRoaXMgZHJpdmVyIHRvIGJ1
aWxkIG9uIEFSTS4KPj4KPiAKPiBVQ0MgYXJlIG9ubHkgb24gUUUuCj4gQ1BNIGhhcyBTQ0NzLiBp
bnN0ZWFkLgo+IFNvIHRoaXMgZHJpdmVyIHNob3VsZG4ndCBuZWVkIGNwbS5oCgpCdXQgaXQgZG9l
cy4gQXQgdGhlIHZlcnkgbGVhc3QgZm9yIHRoZSBCRF9TQ18qIGRlZmluZXMsIHBvc3NpYmx5IG90
aGVycwp0aGluZ3MuIEl0J3MgcG9zc2libGUgb25lIGNvdWxkIHNwbGl0IG9mZiB0aGUgY29tbW9u
IHBhcnQgdG8gYSBzZXBhcmF0ZQpoZWFkZXIsIGJ1dCB0aGF0IHNvcnQgb2YgY2xlYW51cC9yZWZh
Y3RvcmluZyBpcyBiZXlvbmQgd2hhdCBJJ2QgYmUKY29tZm9ydGFibGUgaW5jbHVkaW5nIGluIHRo
aXMgc2VyaWVzLgoKUmFzbXVzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
