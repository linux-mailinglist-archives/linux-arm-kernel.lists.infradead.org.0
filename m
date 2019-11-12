Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0436EF8C65
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 11:02:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rZ2LGSJjKh9PKT1gqqrXHIqEC36UscTmr6Ni9lVIM+I=; b=jY0Y/vscLNQvn0Tnr0cfPdNJ/
	XZohnjV39eU52BmejcW/VZdsvx6Me4CYHmT54FfpY/DlddVwQD5o+PlmrSCy106wlU1a9sJ0Un+v6
	Ws7sRRBoDiHmFXyqFg1CKIsinp+mNQCN7abasfkhq2828KslYpmgSQ3iLXn1rcXqBw84H7VpbzAyB
	60jJJE+yV33u0bZ8tyz1d+wizQkjpHwKgolcQ9ioJi+EAJ4O5NFdPYF0pHK04JGcHN9NlR/x2pIef
	01ZAHtIj8Twlj1r/HGpJUMyrJfe7UtdPXe0ynAkR1XWUfaCELIDDxHGdMJSB6bkMzMcT+zN2mNYVi
	JmZf7Zp9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUT0U-0007tt-1k; Tue, 12 Nov 2019 10:02:42 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUT0L-0007tA-MZ
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 10:02:35 +0000
Received: by mail-wm1-x341.google.com with SMTP id b11so2379389wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 02:02:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=ZV0/xI1cDNWDAAg48JcA6ok2jrNXH3VpcMDZqiMr7I0=;
 b=oVIDt4YtXTKXNM9krSx7RMkK8r+fjJ35bJ8lpRBRuYXC410u/er0oxn8R73DvegE97
 eSSvdbU5bMDRSD5zu58Reg5Iyi2uOh4GMZ/gzsx/atLCDjtSfi/4+xaaplQ4iX9h+Fzi
 5sHfscuNeDiG+pZUgrx05j3rugfj23QMzhNgcwY+FjyxqoXzye3c9AAiUsZXxBFU3yXS
 9YT57qpqCIcdrMNP1on1kK481clziXxRXujGjtt5YdJroPVhO+746HlezpHoatBeNFIQ
 7LKqJ+bOxki1Ow8W5F+unwBVD9Wmi9Rh1g2sey4IWFR1W7LUlWof8eKD2YIjSGJShXlZ
 WFpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ZV0/xI1cDNWDAAg48JcA6ok2jrNXH3VpcMDZqiMr7I0=;
 b=QBeNaiyx9cFqfvvRGioOh8tNb0ansisEe0eCuC1BQrTd0swb+daLmGtcLzVPXewQos
 dot/D81Zh01Me9CIfHkgfCIwtyw25GQT6jm8iS1j0mx1+sUCf7tDHXeqS5o4LkooKIy5
 mseBvxfgQ/xTNk7bdxRyVRAL9HTJI6/Mc2g0NmjsVtEfyS9VxZ4zpprEy/NEU7GDD1EE
 2pumqR0qkxgOd8R3CeKXHCbQDQ8UHCufDHEAjkbUTi9/l8gw3E+Uw7rfCPsmuGZFTUrN
 MH7o2sVG3SrAFFpEvQy9+vuaYcXWrh6ZQVlJ7G2l4taLw/wqp9T6e59ZvAVVsKQpBjKF
 Xkaw==
X-Gm-Message-State: APjAAAXN0VXCNALsyJqBtBrPA/NMcxNU0IGJfImPDb9nR6Wj6miU+fJs
 aqwCXGacopQNSAz/BPnEy4tTbQ==
X-Google-Smtp-Source: APXvYqzLCvkm7qvFyXa0u7U5lfFZDS5G4zvBKLQqPGTW83KJwLuQTVwDbiqILJp0uaQwb4ST+KcByA==
X-Received: by 2002:a1c:4e1a:: with SMTP id g26mr3232608wmh.138.1573552951206; 
 Tue, 12 Nov 2019 02:02:31 -0800 (PST)
Received: from [10.57.1.46] ([45.135.186.94])
 by smtp.gmail.com with ESMTPSA id w81sm4138966wmg.5.2019.11.12.02.02.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 02:02:30 -0800 (PST)
Subject: Re: [PATCH v2 0/8] iommu: Add PASID support to Arm SMMUv3
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20191108152508.4039168-1-jean-philippe@linaro.org>
From: zhangfei <zhangfei.gao@linaro.org>
Message-ID: <8a23f064-129a-02c3-4e14-63db45d7f851@linaro.org>
Date: Tue, 12 Nov 2019 18:02:08 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191108152508.4039168-1-jean-philippe@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_020233_745055_3748A1A1 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, guohanjun@huawei.com, rjw@rjwysocki.net,
 eric.auger@redhat.com, robh+dt@kernel.org, jonathan.cameron@huawei.com,
 sudeep.holla@arm.com, zhangfei.gao@linaro.org, will@kernel.org,
 lenb@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMDE5LzExLzgg5LiL5Y2IMTE6MjUsIEplYW4tUGhpbGlwcGUgQnJ1Y2tlciB3cm90ZToK
PiBUaGlzIGlzIHZlcnNpb24gMiBvZiB0aGUgc2VyaWVzIEkgc2VudCBhIHdoaWxlIGFnbyBbMV0s
IGFkZGluZyBQQVNJRAo+IHN1cHBvcnQgdG8gdGhlIEFybSBTTU1VdjMgZHJpdmVyLgo+Cj4gQ2hh
bmdlcyBzaW5jZSB2MToKPiAqIERyb3BwZWQgdGhlIHBhdGNoIGFkZGluZyBhdXhpbGlhcnkgZG9t
YWluIHN1cHBvcnQuIEl0J3MgYW4gZWFzeSB3YXkgdG8KPiAgICB0ZXN0IFBBU0lELCBieSBwb3B1
bGF0aW5nIFBBU0lEIGNvbnRleHRzIHVzaW5nIGlvbW11X21hcC91bm1hcCgpLCBidXQKPiAgICBJ
IGRvbid0IGtub3cgaWYgaXQgd2lsbCBldmVyIGhhdmUgcmVhbCB1c2Vycy4KPgo+ICAgIFNpbmNl
IHYxIEkgY2hhbmdlZCBteSB0ZXN0aW5nIGdlYXIsIGFuZCBhbSB1c2luZyB0aGUgemlwIGFjY2Vs
ZXJhdG9yCj4gICAgWzJdIGluc3RlYWQgb2YgYSBzb2Z0d2FyZSBtb2RlbC4gSXQgb25seSB1c2Vz
IFNWQSBhbmQgdGVzdGluZwo+ICAgIGF1eGlsaWFyeSBkb21haW5zIHdvdWxkIHJlcXVpcmUgYWRk
aXRpb25hbCBjaGFuZ2VzIHRoYXQgd291bGQgbmV2ZXIgZ28KPiAgICB1cHN0cmVhbS4gU1ZBIHJl
cXVpcmVzIGFub3RoZXIgMjAgcGF0Y2hlcyAoaW5jbHVkaW5nIEkvTyBwYWdlIGZhdWx0cykKPiAg
ICB0aGF0IEkgd2lsbCBzZW5kIGxhdGVyLCBidXQgYXQgbGVhc3QgSSBrbm93IHRoYXQgdGhpcyB3
aWxsIGdldCB1c2VkLgo+Cj4gKiBpb2FzaWQgcGF0Y2ggaGFzIGJlZW4gY2FycmllZCBieSBKYWNv
YiBhbmQgc2hvdWxkIGJlIG1lcmdlZCBmb3IgdjUuNSBbM10KPgo+ICogU3BsaXQgcGF0Y2ggIkFk
ZCBzdXBwb3J0IGZvciBTdWJzdHJlYW0gSURzIiBpbnRvIHBhdGNoZXMgNCBhbmQgNS4KPgo+ICog
QWRkZWQgSU9SVCBzdXBwb3J0IChwYXRjaCAzKSBhbmQgYWRkcmVzc2VkIG90aGVyIGNvbW1lbnRz
Lgo+Cj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWlvbW11LzIwMTkwNjEwMTg0
NzE0LjY3ODYtMS1qZWFuLXBoaWxpcHBlLmJydWNrZXJAYXJtLmNvbS8KPiBbMl0gaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvbGludXgtaW9tbXUvMTU3MjMzMTIxNi05NTAzLTEtZ2l0LXNlbmQtZW1h
aWwtemhhbmdmZWkuZ2FvQGxpbmFyby5vcmcvCj4gWzNdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2xpbnV4LWlvbW11LzE1NzAwNDUzNjMtMjQ4NTYtMS1naXQtc2VuZC1lbWFpbC1qYWNvYi5qdW4u
cGFuQGxpbnV4LmludGVsLmNvbS8KPgo+IEplYW4tUGhpbGlwcGUgQnJ1Y2tlciAoOCk6Cj4gICAg
ZHQtYmluZGluZ3M6IGRvY3VtZW50IFBBU0lEIHByb3BlcnR5IGZvciBJT01NVSBtYXN0ZXJzCj4g
ICAgaW9tbXUvYXJtLXNtbXUtdjM6IFN1cHBvcnQgcGxhdGZvcm0gU1NJRAo+ICAgIEFDUEkvSU9S
VDogU3VwcG9ydCBQQVNJRCBmb3IgcGxhdGZvcm0gZGV2aWNlcwo+ICAgIGlvbW11L2FybS1zbW11
LXYzOiBQcmVwYXJlIGZvciBTU0lEIHN1cHBvcnQKPiAgICBpb21tdS9hcm0tc21tdS12MzogQWRk
IHN1cHBvcnQgZm9yIFN1YnN0cmVhbSBJRHMKPiAgICBpb21tdS9hcm0tc21tdS12MzogQWRkIHNl
Y29uZCBsZXZlbCBvZiBjb250ZXh0IGRlc2NyaXB0b3IgdGFibGUKPiAgICBpb21tdS9hcm0tc21t
dS12MzogSW1wcm92ZSBhZGRfZGV2aWNlKCkgZXJyb3IgaGFuZGxpbmcKPiAgICBpb21tdS9hcm0t
c21tdS12MzogQWRkIHN1cHBvcnQgZm9yIFBDSSBQQVNJRApUaGFua3MgSmVhbiBmb3IgdGhlIHBh
dGNoClRoZSBzZXJpZXMgdGVzdGVkIHdlbGwgb24gSGlzaWxpY29uIHBsYXRmb3JtIEt1blBlbmc5
MjAKVGVzdGVkLWJ5OiBaaGFuZ2ZlaSBHYW8gPHpoYW5nZmVpLmdhb0BsaW5hcm8ub3JnPgoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
