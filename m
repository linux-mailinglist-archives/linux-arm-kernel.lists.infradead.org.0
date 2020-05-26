Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 811D01E26A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 18:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x1v88AhdjJrq38WMqPiDlSGwWSUsOPZCXuUaUR/g7vU=; b=RW65HmGyIT4qp0KP6aPobO7nbX
	MrhsKSuKu9jCInDM/pI7ifDOTU06bgK6sVQSLbT+uQr1Jm296XEM74PVbCgJP/Zovj1CbBkfNkpMQ
	WPUmtfNo6CVvjNmuXLDNLgtpohLrFYRRUzwprFnUSk4A0pmGaql1P3pr2ds06oSr/EJDK6l85tq5f
	WIJRnQYkTMBHl8mkPDhSSm/Whwmsxl3nUCxUa6FJ+xJM15lb1j7McHNlqviJ0CpZHp9sBz0hS/P+b
	JV9HUmGVltzU8IeL6ZaLE1bTydzS3Atg+HxAVPZuFadgVmMhxtVw6zUxD1Q50i4DqePV7OF/Ad2JB
	hI0j+/og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdcFM-0007lU-0X; Tue, 26 May 2020 16:16:08 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdcFB-0007kW-Ja
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 16:15:58 +0000
Received: by mail-pj1-x1042.google.com with SMTP id s69so33855pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 09:15:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=YqEvDdm+2FRvK2g2dpbk2MAAMjjDOpk7CCKnCxddFow=;
 b=Qew9FHZ/T8F9VE7WbLHFYxT7UZdYTNQA1StkBFBnUWe/aEao547r51+4K9HjuOWMDJ
 uyCLXXgnU8/K41YEQ0ozdihpsj8AG+vvYL/V7Isreq6H38Ebx0wAo252XIElvjDe8k77
 kxbElRRST9MgTd7WifEdoXPi5GDuKDUrUdFBiw5StcJpTK65HhtsBwK4u2aTjRrQCPQu
 5krB6Lh07i9ke7UbGhRu0tp7XruxzEso6VrHBgQ1ycIK+iv7suEyn3gSrlWnT4ITaris
 qXvkTrtVdO/4QyM1KFDX0D59dX7sZN2GZu+xXrHaPksNflayJr0eKacetY5b4L1ho7W/
 OlMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YqEvDdm+2FRvK2g2dpbk2MAAMjjDOpk7CCKnCxddFow=;
 b=QW7lJwtOG/odQkWTXRM5cvSUD3g1F7v99OXlhOhdSC4+8C3VeCp9fgC7NS8m/leWBt
 7H8pYYZvW/4NuwtC6zQVB5iL8MB29gOH5+Rn3WKIeGr/9zVU2N62LFm4FeY9TTh60OxD
 aZUjUiSQ8/RWgEm+g9DX56SjmgZkjM2JAc21de5BPGyDBfuKrZQagDlsj1hZsWQoiLz1
 29DkPzO/C4nEctJ7dLefDis6LCtDudgPSZZ7O1h346e9q91SoUdoCqOGO0Sa22oN3B7O
 uRfmK+K/Mt2+ki9uZp7ekJr4KWUEOwHySI2qMt0aY0TG6j/qRauqNBxWq+51o5bl0iMT
 +orA==
X-Gm-Message-State: AOAM530lcftB6m7XP07vvQjz9uX3IWkyp+Fvnf9Zpih4nSDqf5U6zRm6
 pAIb/1IzRC6QSZUzXqeM1TU=
X-Google-Smtp-Source: ABdhPJwMfbhWKQlvyzpNKVQ/t1vHhePAK9yYVH82BhLbp+pJptxgzrRKgEUNfCwhaHG2qRmc9lWuBw==
X-Received: by 2002:a17:90a:4149:: with SMTP id m9mr11944pjg.200.1590509755882; 
 Tue, 26 May 2020 09:15:55 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u1sm33375pfu.151.2020.05.26.09.15.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 May 2020 09:15:55 -0700 (PDT)
Subject: Re: [PATCH] MIPS: BCM63xx: fix 6328 boot selection bit
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 tsbogend@alpha.franken.de, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200526110324.1324754-1-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <862863b2-d73e-0c48-6503-c912c60c1b94@gmail.com>
Date: Tue, 26 May 2020 09:15:54 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200526110324.1324754-1-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_091557_659920_9902B332 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA1LzI2LzIwMjAgNDowMyBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IE1JU0NfU1RSQVBfQlVTX0JPT1RfU0VMX1NISUZUIGlzIDE4IGFjY29yZGluZyB0byBCcm9hZGNv
bSdzIEdQTCBzb3VyY2UgY29kZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5k
ZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgoKVGhpcyBpcyBjb3JyZWN0OgoKQWNrZWQtYnk6
IEZsb3JpYW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwuY29tPgoKRml4ZXM6IGU1NzY2YWVh
NWI5YiAoIk1JUFM6IEJDTTYzWFg6IEFkZCBiYXNpYyBCQ002MzI4IHN1cHBvcnQiKQoKPiAtLS0K
PiAgYXJjaC9taXBzL2luY2x1ZGUvYXNtL21hY2gtYmNtNjN4eC9iY202M3h4X3JlZ3MuaCB8IDQg
KystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9hcmNoL21pcHMvaW5jbHVkZS9hc20vbWFjaC1iY202M3h4L2JjbTYz
eHhfcmVncy5oIGIvYXJjaC9taXBzL2luY2x1ZGUvYXNtL21hY2gtYmNtNjN4eC9iY202M3h4X3Jl
Z3MuaAo+IGluZGV4IGJjMzQ0NGNkNGVmMi4uOWNlYjVlNzI4ODlmIDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvbWlwcy9pbmNsdWRlL2FzbS9tYWNoLWJjbTYzeHgvYmNtNjN4eF9yZWdzLmgKPiArKysgYi9h
cmNoL21pcHMvaW5jbHVkZS9hc20vbWFjaC1iY202M3h4L2JjbTYzeHhfcmVncy5oCj4gQEAgLTEz
NjcsOCArMTM2Nyw4IEBACj4gICNkZWZpbmUgTUlTQ19TVFJBUEJVU182MzI4X1JFRwkJMHgyNDAK
PiAgI2RlZmluZSBTVFJBUEJVU182MzI4X0ZDVk9fU0hJRlQJNwo+ICAjZGVmaW5lIFNUUkFQQlVT
XzYzMjhfRkNWT19NQVNLCQkoMHgxZiA8PCBTVFJBUEJVU182MzI4X0ZDVk9fU0hJRlQpCj4gLSNk
ZWZpbmUgU1RSQVBCVVNfNjMyOF9CT09UX1NFTF9TRVJJQUwJKDEgPDwgMjgpCj4gLSNkZWZpbmUg
U1RSQVBCVVNfNjMyOF9CT09UX1NFTF9OQU5ECSgwIDw8IDI4KQo+ICsjZGVmaW5lIFNUUkFQQlVT
XzYzMjhfQk9PVF9TRUxfU0VSSUFMCSgxIDw8IDE4KQo+ICsjZGVmaW5lIFNUUkFQQlVTXzYzMjhf
Qk9PVF9TRUxfTkFORAkoMCA8PCAxOCkKPiAgCj4gIC8qKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCj4gICAqIF9S
RUcgcmVsYXRpdmUgdG8gUlNFVF9QQ0lFCj4gCgotLSAKRmxvcmlhbgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
