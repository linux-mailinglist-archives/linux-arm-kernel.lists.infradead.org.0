Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACEE8D47B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 15:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uk04IjMJAfD55HDmudIMjtsVOtTwB+jFMyNelP05qcE=; b=MVPw7Cw6LPCJGD
	/0DnYlh4qx2dq6JOfDRin4q3sOtXyYfdefA01Po6uG6ivJogW1PKWOFUGN9eI+S7A6uhGvELDtHxH
	HfIJ5bxdEO3t1G94ZiHVPc7+ltipkgiH4+54Inzs1qUE9k4jRaY5np5t7SejOG2s/DJdv/3L7R5Bj
	u25dXLXvam6gxLbu4xk9URLDO/B05pbHxctB6eIXwOvGoS0dul1/OdDXWXeX4g8NShtDfcjz7JMtE
	hUuQLZX97xIqmENbwRMRyjIxhESp2zGaL4ngsNNccAPVNtrCZlGlhnl+r9IriAlIQfhiAgDqd1L6d
	IxUtpDwuFFVfpCBepPng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxtCP-0002BY-Mh; Wed, 14 Aug 2019 13:20:21 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxtCA-0001cY-Ag
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 13:20:07 +0000
Received: by mail-wr1-x442.google.com with SMTP id g17so111074320wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 06:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=EIBOABIhW8p4vzMRIEIDWwrsBhpWXDFAybGkjCNWRKQ=;
 b=FSUetHQY6NRHgTkY0+nBdWFJhmFzuUxs2z5T3kR2+7DfEMmcxcbkaQAaG/MLjdK2Jx
 W3pN2sZcErE2CpzPS/mBfXv7yBsAinrTX22+sqg+ev9kQMb3PT/+YHWt8V0PDmNJrkEN
 C0mCY6/4cjaPJ/i+JOLKIUD3DNn5FR+W82rhROSX46F7wheZfQ00+PTTYVQRuDYotIWY
 nHIQ95J1Km9b67RHKI76D8tQ22pTJyAdhqQgjTMhXxu9wG6HotCsTQtonuyR679Z2Eze
 bQAEKrHNV7J0xc/EJmcpfdY2U5vphstL9ERZJrJItotY7bcSGvVpsDyN/wkRbyB4d3NX
 odlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=EIBOABIhW8p4vzMRIEIDWwrsBhpWXDFAybGkjCNWRKQ=;
 b=fuuUB5o4OaZ8ybML2n3axNtJtw7EiOCPmZUDRGveR9R0gxcgQvhNn2S1aGIS2ry76O
 PDVvmrHHVdsoFIYfzBpPio5170z8kvffkXz2pPUQXcDOGR/Uwm7E76zE1S+QJxpTKZc4
 Gmm86Vi+28kA/ojxnw1ucxd0o6JEZ7gxv1ld0hiefWN9qQ3YhNBD9r+dSdLSLpm8rWkg
 TkganLu3lG/a9LmUo0oPx6byt6W+N+zPue+evlseLa7AvOHzRpSQtIpW3tbtgWA+OVop
 srY896z0L7whP4mgDm329WIcaVWoS/JpJIiarGy1ou7ht8CGf1wKFa3yYlf5Sck5tbx1
 WXGQ==
X-Gm-Message-State: APjAAAVNMO9mxucFTQdITHIVMGdm/6PxtXNgvhF85HQ2QASjxJnh9w2Y
 Vu2YOB6eJiS/YexBlYNFbkQ=
X-Google-Smtp-Source: APXvYqxPxJNpFq7yShoBZbT8+30pBidnt6vzd5XarUfPJG8vd8rhksyYc2DlG70mMUr/6xJy/kvXCw==
X-Received: by 2002:a5d:528d:: with SMTP id c13mr51924177wrv.247.1565788804469; 
 Wed, 14 Aug 2019 06:20:04 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 39sm30148509wrc.45.2019.08.14.06.20.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 06:20:04 -0700 (PDT)
Date: Wed, 14 Aug 2019 15:20:01 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: Re: [linux-sunxi] [PATCH] ARM64: dts: allwinner: Add devicetree for
 pine H64 modelA evaluation board
Message-ID: <20190814132001.GC24324@Red>
References: <20190808084253.10573-1-clabbe.montjoie@gmail.com>
 <1648748.TWHgARQioU@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1648748.TWHgARQioU@jernej-laptop>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_062006_404114_7ADCC251 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, wens@csie.org,
 mripard@kernel.org, linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgMTIsIDIwMTkgYXQgMTI6NTY6NTZQTSArMDIwMCwgSmVybmVqIMWga3JhYmVj
IHdyb3RlOgo+IERuZSDEjWV0cnRlaywgMDguIGF2Z3VzdCAyMDE5IG9iIDEwOjQyOjUzIENFU1Qg
amUgQ29yZW50aW4gTGFiYmUgbmFwaXNhbChhKToKPiA+IFRoaXMgcGF0Y2ggYWRkcyB0aGUgZXZh
bHVhdGlvbiB2YXJpYW50IG9mIHRoZSBtb2RlbCBBIG9mIHRoZSBQaW5lSDY0Lgo+ID4gVGhlIG1v
ZGVsIEEgaGFzIHRoZSBzYW1lIHNpemUgb2YgdGhlIHBpbmU2NCBhbmQgaGFzIGEgUENJRSBzbG90
Lgo+ID4gCj4gPiBUaGUgb25seSBkZXZpY2V0cmVlIGRpZmZlcmVuY2Ugd2l0aCBjdXJyZW50IHBp
bmVINjQsIGlzIHRoZSBQSFkKPiA+IHJlZ3VsYXRvci4KPiAKPiBJIGhhdmUgTW9kZWwgQSBib2Fy
ZCB3aGljaCBhbHNvIG5lZWRzIGRkYy1lbi1ncGlvcyBwcm9wZXJ0eSBmb3IgSERNSSBjb25uZWN0
b3IgCj4gaW4gb3JkZXIgZm9yIEhETUkgdG8gd29yayBjb3JyZWN0bHkuIE90aGVyd2lzZSBpdCB3
aWxsIGp1c3QgdXNlIDEwMjR4NzY4IAo+IHJlc29sdXRpb24uIENhbiB5b3UgY29uZmlybSB0aGF0
Pwo+IAo+IEJlc3QgcmVnYXJkcywKPiBKZXJuZWoKPiAKClNvcnJ5IEkgZGlkbnQgdXNlIGF0IGFs
bCB2aWRlbyBzdHVmZiAobGlrZSBIRE1JKSwgc28gSSBjYW5ub3QgYW5zd2VyIG5vdy4KCkNvdWxk
IHlvdSBzZW5kIG1lIGEgcGF0Y2ggYWdhaW5zdCBteSBmdXR1cmUgdjIgYW5kIEkgY291bGQgdGVz
dCB3aXRoL3dpdGhvdXQuCgpSZWdhcmRzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
