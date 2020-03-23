Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8951D18FE14
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 20:50:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=auFd6mke3NFahYxM4YzVxA180/cKH6vGJG4Je8Fuwi0=; b=RGGx53R30zZKxB
	+ytG07H928VVVgtOF1PUtr1Hik+n8tw4DU/vOQZG0sxsXjm9j/qXGiedBFF4IIzSm8TFW9HZas7EB
	uYkljmHoQvsUoGoS7J5HOrUmksLHrEii1OgbGN98sgTdMJdp337SjDcxrw9FcZQTHmksa34fiL7CB
	6baXmY+1vj0TLOoXSO1Sw3WjKE52PoIvHlQ4W+SC2y7nSCiPX7KwTbQXajgEm9kgQribXJsdfroiv
	3jYL/Iq5lOLUmPoOIzdIIHyOXIBzJ2U/BaZDJE4SM9K0lXvrfTfbpx880Y8JMK0EDa3FtF1K8JQeK
	gIYSx1GH1ld2Zwj2YHpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGT5d-0000ox-45; Mon, 23 Mar 2020 19:50:25 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGT5J-0008N8-4z
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 19:50:09 +0000
Received: by mail-il1-f194.google.com with SMTP id k29so14584228ilg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 12:50:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=OjC6r2usuImBDLu/35CLd+c7UkFmIFG+06FkAS9qKVg=;
 b=aeaWuk76yWU/LU+ntmdGeyDFFoxSKsW8X88YnkwuGlKSDBLHqSL5P/i6lvS02Y4OHK
 htnUHrmymD4hjNzTIhpXF0PQRO9kqdzyo7Qa9MpPe3LqtZ/aY5AC2RH4avRImS2yF3Ay
 FtfGV02oQAoyHEYkQEMOcey+o0Iqd/Erf0tdP9CZ0MrRjZ4i8/NuwSQ7QEsSf2NLwZpD
 TB8H2ZVuvXCVw0/cZx548vV7IPsb+w82sL9u6+nwgdP68nf+Vcd7jALqokGU8aTU/Pls
 n7UwOpqqRDCupEbVJS0WwA1wbwRsk557BD3X1Jta1EBWqTie67Fu9ti8TKBZVE6XONX2
 GFbg==
X-Gm-Message-State: ANhLgQ2HTy8K930Y0PPEL9cl6yC7v70kIZPbFiZWgzgyfJspCq2Ps3DT
 Z96N7T+86vs/HRHCbLWLtA==
X-Google-Smtp-Source: ADFU+vu/MHCQinxeMPLh3FyJXqUbP8NrFB6mE2fqpJvLKhVTVJRcYgL95OftLKo2ne7u4RCE9iSYrw==
X-Received: by 2002:a92:7b10:: with SMTP id w16mr22320500ilc.93.1584993003863; 
 Mon, 23 Mar 2020 12:50:03 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id v24sm1199217iob.0.2020.03.23.12.50.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 12:50:03 -0700 (PDT)
Received: (nullmailer pid 29486 invoked by uid 1000);
 Mon, 23 Mar 2020 19:50:02 -0000
Date: Mon, 23 Mar 2020 13:50:02 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [RFC 05/11] dt-bindings: serial: Add Sunplus SP7021 UART
Message-ID: <20200323195002.GA27190@bogus>
References: <20200308163230.4002-1-afaerber@suse.de>
 <20200308163230.4002-6-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200308163230.4002-6-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_125005_215362_60759D53 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org,
 Wells Lu =?utf-8?B?5ZGC6Iqz6aiw?= <wells.lu@sunplus.com>,
 Dvorkin Dmitry <dvorkin@tibbo.com>, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBNYXIgMDgsIDIwMjAgYXQgMDU6MzI6MjNQTSArMDEwMCwgQW5kcmVhcyBGw6RyYmVy
IHdyb3RlOgo+IFRoZSBTdW5wbHVzIFBsdXMxIChha2EgUGVudGFncmFtKSBTUDcwMjEgU29DIGhh
cyBmaXZlIFVBUlRzLgo+IAo+IENjOiBXZWxscyBMdSDlkYLoirPpqLAgPHdlbGxzLmx1QHN1bnBs
dXMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5k
ZT4KPiAtLS0KPiAgLi4uL2JpbmRpbmdzL3NlcmlhbC9zdW5wbHVzLHBlbnRhZ3JhbS11YXJ0Lnlh
bWwgICAgfCAyNCArKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNCBp
bnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3Mvc2VyaWFsL3N1bnBsdXMscGVudGFncmFtLXVhcnQueWFtbAo+IAo+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc2VyaWFsL3N1bnBsdXMs
cGVudGFncmFtLXVhcnQueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9z
ZXJpYWwvc3VucGx1cyxwZW50YWdyYW0tdWFydC55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQK
PiBpbmRleCAwMDAwMDAwMDAwMDAuLjlkMTY0MTIzMmE0Ywo+IC0tLSAvZGV2L251bGwKPiArKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc2VyaWFsL3N1bnBsdXMscGVudGFn
cmFtLXVhcnQueWFtbAo+IEBAIC0wLDAgKzEsMjQgQEAKPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMC1vci1sYXRlciBPUiBCU0QtMi1DbGF1c2UKPiArJVlBTUwgMS4yCj4gKy0t
LQo+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3NlcmlhbC9zdW5wbHVzLHBl
bnRhZ3JhbS11YXJ0LnlhbWwjCj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRh
LXNjaGVtYXMvY29yZS55YW1sIwo+ICsKPiArdGl0bGU6IFN1bnBsdXMgUGVudGFncmFtIFNvQyBV
QVJUIFNlcmlhbCBJbnRlcmZhY2UKPiArCj4gK21haW50YWluZXJzOgo+ICsgIC0gQW5kcmVhcyBG
w6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgo+ICsKClNvb24gdGhpcyB3aWxsIG5lZWQgdG8gcmVm
ZXJlbmNlIHNlcmlhbC55YW1sIHdoaWNoIGlzIGdldHRpbmcgYWRkZWQgdG8gCjUuNy4KCj4gK3By
b3BlcnRpZXM6Cj4gKyAgY29tcGF0aWJsZToKPiArICAgIGNvbnN0OiBzdW5wbHVzLHNwNzAyMS11
YXJ0Cj4gKwo+ICsgIHJlZzoKPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsgIGludGVycnVwdHM6
Cj4gKyAgICBtYXhJdGVtczogMQo+ICsKPiArICBjbG9ja3M6Cj4gKyAgICBtYXhJdGVtczogMQo+
ICsuLi4KPiAtLSAKPiAyLjE2LjQKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
