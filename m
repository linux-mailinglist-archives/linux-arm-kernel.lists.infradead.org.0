Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 593071EFC96
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 17:36:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2GIk/kR7aV/g+MbQbDk0VLRH020nA/uAzz3t4Fn8AXY=; b=Mlz6axrmuMTP3S
	BLbUc6MV+vRA5e0KY4e7r0iosPAHH6wt5gEdPFBFJjlgORU9/LHHLx4YQeBQ0G21PeEi3Z18IdYoR
	92Xi7NXcyUyC36cSeToKRCLSOVSLowkBCPlmh/YSzW+qWICrsPzypw0qzVpAL0pU08yNZov09hVlA
	DbF/T6rrXpao+EYMYdcFFfYk3KMMyJOvleg8CPDRouMj+s6tBZj1Eo+DnHVmJzcfkJ0JhKAbtJYUk
	1BQxOgWYam8qNsOwyEl3PaNqYeMj3tI8VyCzj7qxu1VLAVjqBqTulW7NMqs+gGxWYWkHE+mCdNjLi
	O68Qyi30PYOrJw4VrErg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhEOF-0006ZD-Me; Fri, 05 Jun 2020 15:36:15 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhENu-0006VN-HS
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 15:35:56 +0000
Received: by mail-qk1-x743.google.com with SMTP id g28so10109891qkl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 08:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=gtQA+LLer4oF1MYDGWubeGXcmaERWz1Qz3eCvPepdzE=;
 b=L+7U5CYL52JcR/NyNlf4v97TCmdMYsKp0in6xqirZNCrodFwN25QtsN0W6eaS82qLw
 qpImgelVS+V4lRCRz01Phj4serPzJA8LiuPZD6WzOFABjFVFQaIsA9ir2sPaI8yMCujy
 wfmUoKmY2G+kASsmRZD2iFZhLOI0wHF+/UoLZNMC7mAQinREN+FexPKHul2SxDLyQYD1
 /sybO9woUw3iQOb//RpCboHlM0E3gKhbUHtKNIQsaEKdynC2+kSO/lWoxF1GmXpK5T88
 VIpj703sh4WuY75oRrz5zVS1CvySOOkptasu34D5/m0RAG9JwMUbLPu2KrpR2Bc6J0aX
 02Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=gtQA+LLer4oF1MYDGWubeGXcmaERWz1Qz3eCvPepdzE=;
 b=bZMbU4sANnYxFmsOuEZ35AgnUbgeoRbQC6f0j68COyfLzvdNBC59smNEx7Cv5H6Aap
 R3OAY2kl0Es9VOnvdDaiSCO0CPAj4Nt/2k8LSUe136A+xIOWrEfmHhTIR6hrhC6AT9T/
 4M4D958Zeaiyy08Rz6LCtFauFBHMYJhIq3ASn+7CkEwu/EvZhz2/70cExEIdnv1UhQXO
 n+MusUGa7jMA8JVa+AR+zl1XQkNHLtkOwg8zq1WwxGNr4i0tDpjAMm7X3WJ/9FSF0nYm
 UtSUKxRnphaRn79g4AmcM2wArA21a+0TLkJNnlIfMF1dAwJhU/hJK+QQtP7uDa5jfzb7
 T+Yg==
X-Gm-Message-State: AOAM5318EjmomiykEXxr6Yv0G4J5b6Cfm31J8zoinLS2A2tpa2UosSeJ
 1Pe4U9agk0Ux2aqYLgUhA779hQ==
X-Google-Smtp-Source: ABdhPJwg1O5VSMgn7zTkL97tBbW5ATQmTHf0hw3a4DzXkPzRPXx2Smt/9DJcKXp/vxm9P4LUEcqg+g==
X-Received: by 2002:ae9:ebd2:: with SMTP id
 b201mr10185970qkg.409.1591371352936; 
 Fri, 05 Jun 2020 08:35:52 -0700 (PDT)
Received: from skullcanyon ([192.222.193.21])
 by smtp.gmail.com with ESMTPSA id 79sm76810qkf.48.2020.06.05.08.35.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Jun 2020 08:35:51 -0700 (PDT)
Message-ID: <02aa06fd8397b77c9a75d3a8399cb55d3b4d39c1.camel@ndufresne.ca>
Subject: Re: [PATCH 1/5] media: videodev2: add Compressed Framebuffer pixel
 formats
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Neil Armstrong <narmstrong@baylibre.com>, hverkuil-cisco@xs4all.nl
Date: Fri, 05 Jun 2020 11:35:50 -0400
In-Reply-To: <20200604135317.9235-2-narmstrong@baylibre.com>
References: <20200604135317.9235-1-narmstrong@baylibre.com>
 <20200604135317.9235-2-narmstrong@baylibre.com>
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_083554_601380_1E1CDDAC 
X-CRM114-Status: GOOD (  19.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgamV1ZGkgMDQganVpbiAyMDIwIMOgIDE1OjUzICswMjAwLCBOZWlsIEFybXN0cm9uZyBhIMOp
Y3JpdCA6Cj4gRnJvbTogTWF4aW1lIEpvdXJkYW4gPG1qb3VyZGFuQGJheWxpYnJlLmNvbT4KPiAK
PiBBZGQgdHdvIGdlbmVyaWMgQ29tcHJlc3NlZCBGcmFtZWJ1ZmZlciBwaXhlbCBmb3JtYXRzIHRv
IGJlIHVzZWQKPiB3aXRoIGEgbW9kaWZpZXIgd2hlbiBpbXBvcnRlZCBiYWNrIGluIGFub3RoZXIg
c3Vic3lzdGVtIGxpa2UgRFJNL0tNUy4KPiAKPiBUaGVzZSBwaXhlbCBmb3JtYXRzIHJlcHJlc2Vu
dHMgZ2VuZXJpYyA4Yml0cyBhbmQgMTBiaXRzIGNvbXByZXNzZWQgYnVmZmVycwo+IHdpdGggYSB2
ZW5kb3Igc3BlY2lmaWMgbGF5b3V0Lgo+IAo+IFRoZXNlIGFyZSBhbGlnbmVkIHdpdGggdGhlIERS
TV9GT1JNQVRfWVVWNDIwXzhCSVQgYW5kIERSTV9GT1JNQVRfWVVWNDIwXzEwQklUCj4gdXNlZCB0
byBkZXNjcmliZSB0aGUgdW5kZXJseWluZyBjb21wcmVzc2VkIGJ1ZmZlcnMgdXNlZCBmb3IgQVJN
IEZyYW1lYnVmZmVyCj4gQ29tcHJlc3Npb24uIEluIHRoZSBBbWxvZ2ljIGNhc2UsIHRoZSBjb21w
cmVzc2lvbiBpcyBkaWZmZXJlbnQgYnV0IHRoZQo+IHVuZGVybHlpbmcgYnVmZmVyIGNvbXBvbmVu
dHMgaXMgdGhlIHNhbWUuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIEpvdXJkYW4gPG1qb3Vy
ZGFuQGJheWxpYnJlLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBOZWlsIEFybXN0cm9uZyA8bmFybXN0
cm9uZ0BiYXlsaWJyZS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDIt
aW9jdGwuYyB8IDIgKysKPiAgaW5jbHVkZS91YXBpL2xpbnV4L3ZpZGVvZGV2Mi5oICAgICAgIHwg
OSArKysrKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItaW9jdGwuYyBiL2RyaXZlcnMv
bWVkaWEvdjRsMi1jb3JlL3Y0bDItaW9jdGwuYwo+IGluZGV4IDIzMjJmMDhhOThiZS4uOGYxNGFk
ZmQ1YmM1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItaW9jdGwu
Ywo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItaW9jdGwuYwo+IEBAIC0xNDQ3
LDYgKzE0NDcsOCBAQCBzdGF0aWMgdm9pZCB2NGxfZmlsbF9mbXRkZXNjKHN0cnVjdCB2NGwyX2Zt
dGRlc2MgKmZtdCkKPiAgCQljYXNlIFY0TDJfUElYX0ZNVF9TNUNfVVlWWV9KUEc6CWRlc2NyID0g
IlM1QzczTVggaW50ZXJsZWF2ZWQgVVlWWS9KUEVHIjsgYnJlYWs7Cj4gIAkJY2FzZSBWNEwyX1BJ
WF9GTVRfTVQyMUM6CWRlc2NyID0gIk1lZGlhdGVrIENvbXByZXNzZWQgRm9ybWF0IjsgYnJlYWs7
Cj4gIAkJY2FzZSBWNEwyX1BJWF9GTVRfU1VOWElfVElMRURfTlYxMjogZGVzY3IgPSAiU3VueGkg
VGlsZWQgTlYxMiBGb3JtYXQiOyBicmVhazsKPiArCQljYXNlIFY0TDJfUElYX0ZNVF9ZVVY0MjBf
OEJJVDoJZGVzY3IgPSAiQ29tcHJlc3NlZCBZVVYgNDoyOjAgOC1iaXQgRm9ybWF0IjsgYnJlYWs7
Cj4gKwkJY2FzZSBWNEwyX1BJWF9GTVRfWVVWNDIwXzEwQklUOglkZXNjciA9ICJDb21wcmVzc2Vk
IFlVViA0OjI6MCAxMC1iaXQgRm9ybWF0IjsgYnJlYWs7CgpXaGVuIEkgcmVhZCB0aGUgRFJNIGRv
Y3VtZW50YXRpb24gWzBdLCBJJ20gcmVhZGluZyB0aGF0IFlVVjQyMF84QklUCmRlZmluaXRpb24g
bWF0Y2hlcyBWNEwyX1BJWF9GTVRfWVZVNDIwIGFuZCBWNEwyX1BJWF9GTVRfWVZVNDIwTSBmdWxs
eS4KSW4gZmFjdCwgb24gRFJNIHNpZGUsIHRvIHJlcHJlc2VudCB0aGF0IGZvcm1hdCB5b3Ugd2Fu
dCB0byBleHBvc2UgaGVyZSwKdGhleSB3aWxsIHN0cmljdGx5IGNvbWJpbmUgdGhpcyBnZW5lcmlj
IGZvcm1hdCAoZG9jdW1lbnRlZCB1bi0KY29tcHJlc3NlZCkgd2l0aCBhIG1vZGlmaWVyIGdlbmVy
YXRlZCB3aXRoIHRoZSBtYWNybwpEUk1fRk9STUFUX01PRF9BUk1fQUZCQygqKS4gQW5kIG9ubHkg
dGhlIGNvbWJpbmF0aW9uIHJlcHJlc2VudCBhIHVuaXF1ZQphbmQgc2hhcmUtYWJsZSBmb3JtYXQu
CgpJbiBhYnNlbmNlIG9mIG1vZGlmaWVyIGluIFY0TDIgQVBJLCB0aGlzIGNvbXByZXNzZWQgZm9y
bWF0IHNob3VsZCBiZQpuYW1lZCBhY2NvcmRpbmdseSB0byB0aGUgY29tcHJlc3NlZCBhbGdvcml0
aG0gdXNlZCAoc29tZXRoaW5nIGxpa2UKRk1UX1lVVjQyMF84QklUX0FNTF9GQkMpLiBTbyBJIGJl
bGlldmUgdGhlc2UgZm9ybWF0IG5hbWUgY2Fubm90IGJlCmNvcGllZCBhcy1pcyBsaWtlIHRoaXMs
IGFzIHRoZXkgY2FuIG9ubHkgaW50cm9kdWNlIG1vcmUgYW1iaWd1aXR5IGluCnRoZSBhbHJlYWR5
IHF1aXRlIGhhcmQgdG8gZm9sbG93IG5hbWluZyBvZiBwaXhlbCBmb3JtYXRzLiBJbiBmYWN0LCBp
dAppcyB2ZXJ5IGNvbW1vbiB0byBzZWUgbXVsdGlwbGUgZGlmZmVyZW50IHZlbmRvciBjb21wcmVz
c2lvbnMgb24gdGhlCnNhbWUgU29DLCBzbyBJIGRvbid0IHJlYWxseSBiZWxpZXZlIGEgImdlbmVy
aWMiIGNvbXByZXNzZWQgZm9ybWF0IG1ha2UKc2Vuc2UuIFRvIHNpdGUgb25lLCB0aGUgSU1YOE0s
IHdoaWNoIGdvdCBWZXJyaXNpbGxpY29uL1ZpdmFudGUgREVDNDAwCm9uIHRoZSBHUFUsIGFuZCB0
aGUgSGFudHJvIEcyIGNvbXByZXNzaW9uIGZvcm1hdC4gQm90aCB3aWxsIGFwcGx5IHRvCk5WMTIg
Y2xhc3Mgb2YgZm9ybWF0IHNvIGluIERSTSB0aGV5IHdvdWxkIGJlIE5WMTIgKyBtb2RpZmllciwg
YW5kIHRoZQpjb21iaW5hdGlvbiBmb3JtcyB0aGUgdW5pcXVlIGZvcm1hdC4gTm93LCBpbiB0ZXJt
IG9mIHNoYXJpbmcsIHRoZXkgbXVzdApiZSBkaWZmZXJpZW50ZWQgYnkgdXNlcnNwYWNlLCBhcyBz
dXBwb3J0IGZvciBjb21wcmVzc2lvbi9kZWNvbXByZXNzaW9uCmlzIGhldGVyb2dlbmVvdXMgKGlu
IHRoYXQgY2FzZSB0aGUgR1BVIGRvZXMgbm90IHN1cHBvcnQgSGFudHJvIEcyCmRlY29tcHJlc3Np
b24gb3IgY29tcHJlc3Npb24sIGFuZCB0aGUgVlBVIGRvZXMgbm90IHN1cHBvcnQgREVDNDAwKS4K
CkknbGwgcmVtaW5kIHRoYXQgdGhlIG1vZGlmaWVyIGltcGxlbWVudGF0aW9uIGhhcyBncmVhdCB2
YWx1ZSBhbmQgaXMKbXVjaCBtb3JlIHNjYWxhYmxlIHRoZW4gdGhlIGN1cnJlbnQgVjRMMiBhcHBy
b2FjaC4gVGhlcmUgaGFzIGJlZW4gc29tZQplYXJseSBwcm9wb3NhbCBmb3IgdGhpcywgbWF5YmUg
aXQncyB0aW1lIHRvIHByaW9yaXRpemUgYmVjYXVzZSB0aGlzCmxpc3Qgd2lsbCBzdGFydHMgZ3Jv
d2luZyB3aXRoIGh1bmRyZWQgb3IgZXZlbiB0aG91c2FuZHMgb3IgZm9ybWF0LAp3aGljaCBpcyBj
bGVhcmx5IGluZGljYXRlZCBieSB0aGUgaW5jcmVhc2Ugb2YgbW9kaWZpZXIgZ2VuZXJhdG9yIG1h
Y3JvCm9uIHRoZSBEUk0gc2lkZS4KCj4gIAkJZGVmYXVsdDoKPiAgCQkJaWYgKGZtdC0+ZGVzY3Jp
cHRpb25bMF0pCj4gIAkJCQlyZXR1cm47Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51
eC92aWRlb2RldjIuaCBiL2luY2x1ZGUvdWFwaS9saW51eC92aWRlb2RldjIuaAo+IGluZGV4IGMz
YTFjZjFjNTA3Zi4uOTBiOTk0OWFjYjhhIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvdWFwaS9saW51
eC92aWRlb2RldjIuaAo+ICsrKyBiL2luY2x1ZGUvdWFwaS9saW51eC92aWRlb2RldjIuaAo+IEBA
IC03MDUsNiArNzA1LDE1IEBAIHN0cnVjdCB2NGwyX3BpeF9mb3JtYXQgewo+ICAjZGVmaW5lIFY0
TDJfUElYX0ZNVF9GV0hUICAgICB2NGwyX2ZvdXJjYygnRicsICdXJywgJ0gnLCAnVCcpIC8qIEZh
c3QgV2Fsc2ggSGFkYW1hcmQgVHJhbnNmb3JtICh2aWNvZGVjKSAqLwo+ICAjZGVmaW5lIFY0TDJf
UElYX0ZNVF9GV0hUX1NUQVRFTEVTUyAgICAgdjRsMl9mb3VyY2MoJ1MnLCAnRicsICdXJywgJ0gn
KSAvKiBTdGF0ZWxlc3MgRldIVCAodmljb2RlYykgKi8KPiAgCj4gKy8qCj4gKyAqIENvbXByZXNz
ZWQgTHVtaW5hbmNlK0Nocm9taW5hbmNlIG1ldGEtZm9ybWF0cwo+ICsgKiBJbiB0aGVzZSBmb3Jt
YXRzLCB0aGUgY29tcG9uZW50IG9yZGVyaW5nIGlzIHNwZWNpZmllZCAoWSwgZm9sbG93ZWQgYnkg
VQo+ICsgKiB0aGVuIFYpLCBidXQgdGhlIGV4YWN0IExpbmVhciBsYXlvdXQgaXMgdW5kZWZpbmVk
Lgo+ICsgKiBUaGVzZSBmb3JtYXRzIGNhbiBvbmx5IGJlIHVzZWQgd2l0aCBhIG5vbi1MaW5lYXIg
bW9kaWZpZXIuCj4gKyAqLwo+ICsjZGVmaW5lIFY0TDJfUElYX0ZNVF9ZVVY0MjBfOEJJVAl2NGwy
X2ZvdXJjYygnWScsICdVJywgJzAnLCAnOCcpIC8qIDEtcGxhbmUgWVVWIDQ6MjowIDgtYml0ICov
Cj4gKyNkZWZpbmUgVjRMMl9QSVhfRk1UX1lVVjQyMF8xMEJJVAl2NGwyX2ZvdXJjYygnWScsICdV
JywgJzEnLCAnMCcpIC8qIDEtcGxhbmUgWVVWIDQ6MjowIDEwLWJpdCAqLwo+ICsKPiAgLyogIFZl
bmRvci1zcGVjaWZpYyBmb3JtYXRzICAgKi8KPiAgI2RlZmluZSBWNEwyX1BJWF9GTVRfQ1BJQTEg
ICAgdjRsMl9mb3VyY2MoJ0MnLCAnUCcsICdJJywgJ0EnKSAvKiBjcGlhMSBZVVYgKi8KPiAgI2Rl
ZmluZSBWNEwyX1BJWF9GTVRfV05WQSAgICAgdjRsMl9mb3VyY2MoJ1cnLCAnTicsICdWJywgJ0En
KSAvKiBXaW5ub3YgaHcgY29tcHJlc3MgKi8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
