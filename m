Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A85FE70EE4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 03:56:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EPxD58OvKgUyuogS8s+Vofti2OdmxlbRRSC36lXOUGE=; b=WsRc7PxG/dH18c08xGSf5nU8G
	46FNm8CHBAbEqwA1dF6F08CQV5/KKQ2dUIyVBg6ucE7AuUVq6ZzOgEi3JG8ZKqxh/gfd3okRQKAK8
	zbIUPdDQZiPJZ7i0ATobbl8hJW+GWeHXfmZeEGxlP7C0m24vmYnbGKu3gdmOFZH9+3wqWRLcrBARx
	gA/GIxCTwy9X/DFGVgPh8FBQKAWsm86anadEU2Gat0PeXMjxThLmdrnx49A/M5Ie541cG9oPvdaE9
	CjfrbQuFwTLEBe0DehBrRIVHOqZPemyc5xxVU3tiLb2T0/SHmO8tZAdM/lR3SyssclzIODTI3BaRZ
	016xoTttQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpk2o-000136-Tx; Tue, 23 Jul 2019 01:56:47 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpk2L-00012R-Px
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 01:56:19 +0000
Received: by mail-pl1-x641.google.com with SMTP id k8so19947252plt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 18:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=zdeVjAmSrferDd7T8hxsXdL0gr4l2xZ9zqxhMuU3IN4=;
 b=DL1hJknP7dOl9CjvZmvtrrFSLoqcpqlmYiN2kZoCeny4znXR65bo8ivkfAHSiRM8Io
 ciV5lejw6TLu5OncuR3jGwZHKmjXVnQpbP2HlGNCp5/18DPVq0rEGMRIk7NYUXKy9SQz
 AE359Z3Ib+/HgL9RChLa4wN7g0Vmm3Ubqrjglfe5yCw7/Y4pGBbi5JwE9SQD6McdFs/Y
 hdWQVG5eWZWRRNYC/wR0Z8IrBVFFuB8XzTj1CdTuQ/Wq0aynAWQ8W2wPHvlMahAq6O74
 ESiKZsWT+vZH5vvL2fcLwpdekXs87EFTsfQkYJmbOPZc2f1wPEgwIucBUAyT7rABq7sx
 WjEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zdeVjAmSrferDd7T8hxsXdL0gr4l2xZ9zqxhMuU3IN4=;
 b=oWRzcHkGwunDnxsRR8zAvJJ9Au0B9lhxYVYczAVPR2v8imlKtV3LzP8Evjy7y7/6DU
 Q6BKx/97lLlKD6ThYLEQ1cOv2D6tp9SsH2alabiNOqCKpccGUZHMiodB7U7kKBAvA0OO
 GzHxNCzkThX0ejk57pjtHnYedLfkT1+OSNjBvH8OIxViD3me9rJp+Z6aj58Y5E9Jb9CO
 tJA3HDAkx8piN9j+11ggl2/eUe4g1eM67rGXC4I6hPhGxRzPDxjeCokb1upDUJE0tEo/
 ioPfeEh2h1Uy643MQUOz9F1i67xCAM0fzSAj8AAoQQcS/wgBUlVIRVqtJOIGWdorFBe1
 D18A==
X-Gm-Message-State: APjAAAVGRkPQcgrMuMvHJ0VyQTDjbiwWIenXKqqS/O9zTw+IGq+BpsPI
 G/DWcUAl9HiQubblsOZkxfA=
X-Google-Smtp-Source: APXvYqzKhsXfltpbJVJRV5E8B+0BKmnIOshdtuCdiVOvUrS5QqQf/Dmwvk82qizj9HvksQeH3+gOmg==
X-Received: by 2002:a17:902:44f:: with SMTP id
 73mr78998934ple.192.1563846976747; 
 Mon, 22 Jul 2019 18:56:16 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 s11sm12752287pgc.78.2019.07.22.18.56.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 18:56:15 -0700 (PDT)
Subject: Re: [PATCH] dt-bindings: hwmon: Add binding for pxe1610
To: Vijay Khemka <vijaykhemka@fb.com>
References: <20190722192451.1947348-1-vijaykhemka@fb.com>
 <20190722192451.1947348-2-vijaykhemka@fb.com>
 <20190722200622.GA20435@roeck-us.net>
 <6E2B35D8-B538-4C96-B289-27A87ECD74DB@fb.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <d3137d6b-8bf8-4da6-9da7-a42b8bc68fbd@roeck-us.net>
Date: Mon, 22 Jul 2019 18:56:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <6E2B35D8-B538-4C96-B289-27A87ECD74DB@fb.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_185617_850256_48046953 
X-CRM114-Status: GOOD (  22.69  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>, Sai Dasari <sdasari@fb.com>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 "openbmc @ lists . ozlabs . org" <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNy8yMi8xOSA1OjEyIFBNLCBWaWpheSBLaGVta2Egd3JvdGU6Cj4gCj4gCj4g77u/T24gNy8y
Mi8xOSwgMTowNiBQTSwgIkd1ZW50ZXIgUm9lY2siIDxncm9lY2s3QGdtYWlsLmNvbSBvbiBiZWhh
bGYgb2YgbGludXhAcm9lY2stdXMubmV0PiB3cm90ZToKPiAKPiAgICAgIE9uIE1vbiwgSnVsIDIy
LCAyMDE5IGF0IDEyOjI0OjQ4UE0gLTA3MDAsIFZpamF5IEtoZW1rYSB3cm90ZToKPiAgICAgID4g
QWRkZWQgbmV3IERUIGJpbmRpbmcgZG9jdW1lbnQgZm9yIEluZmluZW9uIFBYRTE2MTAgZGV2aWNl
cy4KPiAgICAgID4KPiAgICAgID4gU2lnbmVkLW9mZi1ieTogVmlqYXkgS2hlbWthIDx2aWpheWto
ZW1rYUBmYi5jb20+Cj4gICAgICA+IC0tLQo+ICAgICAgPiAgLi4uL2RldmljZXRyZWUvYmluZGlu
Z3MvaHdtb24vcHhlMTYxMC50eHQgICAgICAgICB8IDE1ICsrKysrKysrKysrKysrKwo+ICAgICAg
PiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykKPiAgICAgID4gIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaHdtb24vcHhlMTYxMC50
eHQKPiAgICAgID4KPiAgICAgID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9od21vbi9weGUxNjEwLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9od21vbi9weGUxNjEwLnR4dAo+ICAgICAgPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+
ICAgICAgPiBpbmRleCAwMDAwMDAwMDAwMDAuLjYzNWRhZjQ5NTVkYgo+ICAgICAgPiAtLS0gL2Rl
di9udWxsCj4gICAgICA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9o
d21vbi9weGUxNjEwLnR4dAo+ICAgICAgPiBAQCAtMCwwICsxLDE1IEBACj4gICAgICA+ICtweGUx
NjEwIHByb3BlcnRpZXMKPiAgICAgID4gKwo+ICAgICAgPiArUmVxdWlyZWQgcHJvcGVydGllczoK
PiAgICAgID4gKy0gY29tcGF0aWJsZTogTXVzdCBiZSBvbmUgb2YgdGhlIGZvbGxvd2luZzoKPiAg
ICAgID4gKwktICJpbmZpbmVvbixweGUxNjEwIiBmb3IgcHhlMTYxMAo+ICAgICAgPiArCS0gImlu
ZmluZW9uLHB4ZTExMTAiIGZvciBweGUxNjEwCj4gICAgICA+ICsJLSAiaW5maW5lb24scHhtMTMx
MCIgZm9yIHB4bTEzMTAKPiAgICAgID4gKy0gcmVnOiBJMkMgYWRkcmVzcwo+ICAgICAgPiArCj4g
ICAgICA+ICtFeGFtcGxlOgo+ICAgICAgPiArCj4gICAgICA+ICt2ckA0OCB7Cj4gICAgICA+ICsJ
Y29tcGF0aWJsZSA9ICJpbmZpbmVvbixweGUxNjEwIjsKPiAgICAgID4gKwlyZWcgPSA8MHg0OD47
Cj4gICAgICA+ICt9Owo+ICAgICAgCj4gICAgICBXb3VsZG4ndCBpdCBiZSBiZXR0ZXIgdG8gYWRk
IHRoaXMgdG8KPiAgICAgIC4vRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RyaXZp
YWwtZGV2aWNlcy50eHQgPwo+IFN1cmUsIEkgZGlkbid0IGtub3cgYWJvdXQgdGhpcyBmaWxlLiBJ
IHdpbGwgYWRkIGFuZCBzZW5kIGFub3RoZXIgcGF0Y2guIEl0IGlzCj4gRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3RyaXZpYWwtZGV2aWNlcy55YW1sLiBIb3cgZG8gSSBhYmFuZG9u
Cj4gdGhpcyBwYXRjaCBvciBqdXN0IGxlYXZlIGl0Lgo+ICAgICAgCgpXaGVuIHlvdSBzZW5kIHYy
LCBqdXN0IGFkZCB0aGUgZGV2aWNlIHRvIHRoZSB0cml2aWFsLWRldmljZXMgZmlsZSBpbnN0ZWFk
CmFuZCBkZXNjcmliZSB0aGUgZGlmZmVyZW5jZXMgdG8gdjEgKGllIHRoaXMgcGF0Y2gpLgoKR3Vl
bnRlcgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
