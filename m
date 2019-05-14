Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 435391CCFC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 18:30:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=13TiL53mNTSW7+KfqzgE6thULrcfY+DeTW7oiZ4ObyY=; b=Tdt/zemrjjeW6I
	HXGjBtrZ4X2R22f7kum70afVv8gBKh6Oesen6G6SjVb9/key9+fve/o0Ti48cA25wu23yx0Xrsqez
	uRBvT2ygOA7BARB4Hrnuc2gOYGg+mKXcvMUJQq67vnapfZDdpb1Z3YD7yglozCIZOAHvqN6JMTSBv
	veqZZOrMNpCGNgeRu5VeIu26J8xsxXs/quJwQEud94wa+0ksKNGa48dDaooDcb90S5SIpTGIxyNS7
	K43IByLAJoMAW4v+mgKn+uOK4NAhFhjRfmBav3wyk3bn3FZ8NMnWbi4R5HsSYBN2RZDA6zR97Y5ev
	s0pKy7YXh4U2/J1Sna0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQaK2-0004eu-5v; Tue, 14 May 2019 16:30:34 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQaJt-0004eV-AM
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 16:30:26 +0000
Received: by mail-pl1-x630.google.com with SMTP id x15so8508848pln.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 09:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uuKK3mR4hA4i4JCsj/Kq1PVxAZau9p6kEToMkCt9NZw=;
 b=EhVvJi4w4BR9xTrJYoWqIAnnSL0+LEY2TwBngqnUTL/PB/ILUwCJeJvNdEm47x5YaD
 ZiseRKdoLAugTw4slONhk7T2X0hWBgsx76/Gv6FkXr0LOyi1dPFIvopdxcQAsihpQlpg
 8yuaw+qFWThLNJXs8PA/Il+0MbEbmF4Dfh6cdLQxjlhDoufXerapcHFIwa9atf7ZsS2L
 aVpWUKg+ubH3ijsSlgce29rXcgIFxh2ECcLYotPERprKx7V0OYGdUth7M0XqdxbLPTzF
 kYUKbumo9mlG4O0kHO8s3+mNCKlnJLkKpqjuwhH4gx91JNXqQRxR0qhW3OzzQZVPixut
 eBRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uuKK3mR4hA4i4JCsj/Kq1PVxAZau9p6kEToMkCt9NZw=;
 b=El2PCy76UiTfvb0emJe47yNODwdCczkMWeFoiPGr7iwMODbmOR+KHr6xyv0+VgUBEy
 qRkCKCSZGPBYKF+q1sJ1yONEXOmnUlxOEZ79WiufgBn4O+SPx0rW6+ZdhZ9lBnDNG/Tv
 1Ou44rNC/9dbuWQiaLlzEL83Sd64qQvti2ERDd1zYO7SfgaurcwzpSIvo54vybgRpeFf
 uhOi9whGxpPNQZtb83bHEywYh0D7jxzE8B+U+we/Pqn5GBg2Xbgq3wE78si3lqkGy54k
 4szOOsesvASy4k1AGRB9PKJuR+NMcku8oUiWDj4AdzVWO8txnb9fGjXPEDKhieM24Brg
 Ujkw==
X-Gm-Message-State: APjAAAXPt5I2sG25BdOHbWAkkcSBCCpRz3ZRp6ZpEynq4UO5XE8OmTNI
 xU28wu/jHJJ0z3GECQFi+Cl2i+KQ
X-Google-Smtp-Source: APXvYqzs4fyGjlRgOBs0Nb+TzxRJgwCiX8zcvwkB82bJdY463a07ZRC+FtrklJEZ2aIb3N3SD+2jCw==
X-Received: by 2002:a17:902:2983:: with SMTP id
 h3mr12641147plb.267.1557851424198; 
 Tue, 14 May 2019 09:30:24 -0700 (PDT)
Received: from [192.168.2.145] (ppp94-29-35-107.pppoe.spdop.ru. [94.29.35.107])
 by smtp.googlemail.com with ESMTPSA id
 b144sm23348864pfb.68.2019.05.14.09.30.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 09:30:23 -0700 (PDT)
Subject: Re: [PATCH V3 3/8] clk: tegra: Export functions for EMC clock scaling
To: Joseph Lo <josephl@nvidia.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190510084719.18902-1-josephl@nvidia.com>
 <20190510084719.18902-4-josephl@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <502f213b-2101-9d56-54c9-8be48f1be5b8@gmail.com>
Date: Tue, 14 May 2019 19:29:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190510084719.18902-4-josephl@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_093025_362078_15AAE855 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:630 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTAuMDUuMjAxOSAxMTo0NywgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4gRXhwb3J0IGZ1bmN0aW9u
cyB0byBhbGxvdyBhY2Nlc3NpbmcgdGhlIENBUiByZWdpc3RlciByZXF1aXJlZCBieSBFTUMKPiBj
bG9jayBzY2FsaW5nLiBUaGVzZSBmdW5jdGlvbnMgd2lsbCBiZSB1c2VkIHRvIGFjY2VzcyB0aGUg
Q0FSIHJlZ2lzdGVyCj4gYXMgcGFydCBvZiB0aGUgc2NhbGluZyBzZXF1ZW5jZS4KCj4gREtJTS1T
aWduYXR1cmU6IHY9MTsgYT1yc2Etc2hhMjU2OyBjPXJlbGF4ZWQvcmVsYXhlZDsgZD1udmlkaWEu
Y29tOyBzPW4xOwo+IAl0FTU3NDc4MDE4OyBiaD1lbWQzUjZuU0Z3TDVCK2FXQTJXK2JKcWNaMUpo
dnduYXl6MXdHT1BTQTRNPTsKPiAJaD1YLVBHUC1Vbml2ZXJzYWw6RnJvbTpUbzpDQzpTdWJqZWN0
OkRhdGU6TWVzc2FnZS1JRDpYLU1haWxlcjoKPiAJIEluLVJlcGx5LVRvOlJlZmVyZW5jZXM6TUlN
RS1WZXJzaW9uOlgtTlZDb25maWRlbnRpYWxpdHk6Cj4gCSBDb250ZW50LVRyYW5zZmVyLUVuY29k
aW5nOkNvbnRlbnQtVHlwZTsKPiAJYj1mVzdkZHg2cDZCdUdOTEdBNmpBTDVBeHNvanFlUWNPZzlm
WkJxYkExWmU0NVhVM2d0N3RpTDg4czhnN2dUZnRBKwo+IAkgTmRydUtSWFBMUzByNGlPZ0txRVVm
M2Jtb0JQMEtmK2wwUFFjSnU1NVU1djU1WG5QNmN1S3JRdzJjbWJEYXcvZzJaCj4gCSBhNkRackFJ
YlVaemkzUDNiNzY0WkRtVWxSRDFzSEFXV3N3WndHM2tId0JQMFRET1hOakFFVmNwN05QbTg2OFZP
dnYKPiAJIGFKcmRiNlZibGtud2pOa0U2T1Y3a3RHQjFPRGdlNVlTQWVQRExOQXBsWkJ3K0JGbm9n
dEVTd3ZmMGNGY1lWYnhDRwo+IAkgQ09oL1VOS2RsSnVPTTk1SWdiWmlvbTlJOE5pd3VTMDdiQTJX
enVkU2duTUtiaE5JNlZsRmdEdTVBNkphUHQzSXJ2Cj4gCSBONG51VVQ0K0xuM0ZnPQo+IAoKV2hh
dCdzIHRoYXQ/CgotLSAKRG1pdHJ5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
