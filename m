Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 793251B47C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 16:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M7fIIWNTV1n9R7o1cwg8SiBm/Ig6fJDIReMFq8cLqOE=; b=lkXAEn4F05tGmg
	t0jdyFeiE/K2K9QZj5EdIUTkeerWqMT57BIaINlSsc1fIinW3MsfXaK37W+jG/IQP3UPynQt0bCHT
	ch55eyDNNQ77cJCvo8++SeuwbMx52fzv+V/d1a0PAwHmkkztZPP04HAVvM/NscDdFodbnUdqi32wT
	9E9BFtn2/dt27Xocl87TbN5E2AplPUB9QhW+LOjg5DfySGOsvoUpT4uprujbgyBxJisHd2upU4ynH
	MJZ3EgB2SllMVJr/evsKDwpP+y4Hz8JcgLilONqp3go8vS04SKuyya+9RYwcuREytGDNQFpNIwOP4
	HdFZ20QJN0kdSx9ibj3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRGls-0003pE-F2; Wed, 22 Apr 2020 14:54:40 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRGli-0003nA-K7; Wed, 22 Apr 2020 14:54:32 +0000
Received: by mail-lj1-x244.google.com with SMTP id m8so2637528lji.1;
 Wed, 22 Apr 2020 07:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=j4IL19ri7V1Qm+D4j4fO28F9L9bRN2u0iPKVfin1/Rw=;
 b=MQM7awQI4I8Q7+FDbZ8+5oYMV4mYTyFU7tIcXKIItc38paWyJYiMvDYUQIfuHMuSMZ
 C/OIKvP4ooNyLGu/BAW/GOC8j57hJ1xor/l+npcNJz/+Zgj8fg2rB5/cPo0E5wi98hoi
 igU7eLXrmQJxTsmy2Q5RG5anHy6szn4ncvdM3rQEpKG8018kbnuc4zomlLvJvX6/i1dY
 /u0Osabm0g6LHVUvA8FDNKpqZBiuvQAWTnYMPwOQKBCHjOpSSQvSEzQrYI3fZk0j9av9
 xzo9K6psHNRmjE5gS+yDmqjl6yx/X28ogwckVpiFIwRUAKbcqwngQ1MG/6ilwvV0L6QR
 FIwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=j4IL19ri7V1Qm+D4j4fO28F9L9bRN2u0iPKVfin1/Rw=;
 b=XrbBVvQPqVU5iEp/tFG8pSWhwu2NV1OjnJW31rHCKWSeoK2UdVsn/SOlRSC6l7+HEQ
 OanIRAjiBtOVDGK6bLHtUC12MLbgSC2APGRInSAEZOt4bGUDy4WZfjrbUGY1WGQOUs6/
 vr6rg2a8iCFexQsn2KKv9IvUV5hv8LNj/uTeV0eUfFIQxBIeaCF8zMywrzX1/gQrt9jy
 TqwIH3RetV9rKi8+sz4Sz1lPUBNPJUXRD5QGo+16+d9g/gk5rTbg99M3wkaXAQgMrino
 xY2rjjMQs+bwAsK+a6c63cCmT27BxO925hCXe9UzrUOOXEEnBuNbLbIq4zyGh9oTtcXt
 3PZw==
X-Gm-Message-State: AGi0PuYHedRTp98Dp8+UQetQ1oM9vRrWqU5iJ/UgYhWpOkOrAi+68Sj9
 0HkGIN3CfCLbduN7Iy13YCU=
X-Google-Smtp-Source: APiQypLSg8w8M7YXAsS/Bs4hQLKGrRg2Z7PqvsNZ0sH2NFAriwwxv6Ts0Q5ZnxnHB6XTkvqUIMokhQ==
X-Received: by 2002:a2e:7301:: with SMTP id o1mr10636181ljc.264.1587567267052; 
 Wed, 22 Apr 2020 07:54:27 -0700 (PDT)
Received: from [172.16.20.20] ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id 4sm4302900ljf.79.2020.04.22.07.54.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 Apr 2020 07:54:26 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
Subject: Re: [v2] arm64: dts: meson: odroid-n2: extend cpu opp-points
From: Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <20200418214223.GA4484@imac>
Date: Wed, 22 Apr 2020 18:54:21 +0400
Message-Id: <52230ECA-EA47-499D-B71C-FFCD374B75C3@gmail.com>
References: <20200418214223.GA4484@imac>
To: Tim Lewis <elatllat@gmail.com>
X-Mailer: Apple Mail (2.3445.104.14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_075430_662846_988DD1EC 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, joy.cho@hardkernel.com,
 Neil Armstrong <narmstrong@baylibre.com>, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, tobetter@gmail.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cj4gT24gMTkgQXByIDIwMjAsIGF0IDE6NDIgYW0sIFRpbSBMZXdpcyA8ZWxhdGxsYXRAZ21haWwu
Y29tPiB3cm90ZToKPiAKPiBPZHJvaWQgTjIgaGFzIGEgbGFyZ2UgaGVhdHNpbmsgYW5kIEhhcmRL
ZXJuZWwgc3VwcG9ydHMgb3ZlcmNsb2NrCj4gdGhyb3VnaCB0aGUgYWRkaXRpb24gdG8gZXh0cmEg
b3BwIHBvaW50cyBpbiB0aGVpciBvZmZpY2lhbCBrZXJuZWwKPiBzb3VyY2VzIFsxXS4gQWRkIHRo
ZXNlIHRvIHRoZSBOMiBkdHMgb25seSwgYXMgb3RoZXIgUzkyMlggZGV2aWNlcwo+IG1heSBub3Qg
aGF2ZSBzdWl0YWJsZSBoZWF0c2lua3MuCj4gCj4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9oYXJk
a2VybmVsL2xpbnV4L2NvbW1pdC9mODZjZDk0ODdjNzQ4M2IyYTA1ZjQ0OGI5ZWJhY2Y2YmQ1YTJh
ZDJmCj4gU2lnbmVkLW9mZi1ieTogVGltIExld2lzIDxlbGF0bGxhdEBnbWFpbC5jb20+CgpLb2Rp
IGlzIG5vdCBhIGRlbWFuZGluZyB3b3JrbG9hZCwgYnV0IHRoZSBleHRyYSBvcHAgcG9pbnRzIGFy
ZSBiZWluZyB1c2VkOgoKTjI6fiAjIGNhdCAvc3lzL2RldmljZXMvc3lzdGVtL2NwdS9jcHVmcmVx
L3BvbGljeTAvc3RhdHMvdHJhbnNfdGFibGUgCiAgIEZyb20gIDogICAgVG8KICAgICAgICAgOiAg
ICAxMDAwMDAgICAgMjUwMDAwICAgIDUwMDAwMCAgICA2NjcwMDAgICAxMDAwMDAwICAgMTIwMDAw
MCAgIDEzOTgwMDAgICAxNTEyMDAwICAgMTYwODAwMCAgIDE3MDQwMDAgICAxODk2MDAwICAgMTk5
MjAwMCAKICAgMTAwMDAwOiAgICAgICAgIDAgICAgIDIwNDY1ICAgICAgIDI5NCAgICAgICAgODEg
ICAgICAgIDQ3ICAgICAgICAgMCAgICAgICAgIDEgICAgICAgICAwICAgICAgICAgMCAgICAgICAg
IDAgICAgICAgICAwICAgICAgIDE4MyAKICAgMjUwMDAwOiAgICAgMjAzODggICAgICAgICAwICAg
ICAgIDE2MSAgICAgICAgNTIgICAgICAgIDU5ICAgICAgICAgMCAgICAgICAgIDAgICAgICAgICAw
ICAgICAgICAgMSAgICAgICAgIDAgICAgICAgICAxICAgICAgIDE2OSAKICAgNTAwMDAwOiAgICAg
ICAxOTkgICAgICAgMjU2ICAgICAgICAgMCAgICAgICAgIDkgICAgICAgIDQ3ICAgICAgICAgMSAg
ICAgICAgIDIgICAgICAgICAwICAgICAgICAgMCAgICAgICAgIDAgICAgICAgICAwICAgICAgICA1
NyAKICAgNjY3MDAwOiAgICAgICAxNzcgICAgICAgIDUwICAgICAgICAxMCAgICAgICAgIDAgICAg
ICAgMjg0ICAgICAgICAgMSAgICAgICAgIDEgICAgICAgICAwICAgICAgICAgMCAgICAgICAgIDAg
ICAgICAgICAwICAgICAgIDEzNiAKICAxMDAwMDAwOiAgICAgICAyMzAgICAgICAgIDEyICAgICAg
ICAxNSAgICAgICAyODQgICAgICAgICAwICAgICAgICAgMSAgICAgICAgIDIgICAgICAgICAwICAg
ICAgICAgMCAgICAgICAgIDAgICAgICAgICAwICAgICAgIDI4NSAKICAxMjAwMDAwOiAgICAgICAg
IDAgICAgICAgICAwICAgICAgICAgMCAgICAgICAgIDEgICAgICAgICAwICAgICAgICAgMCAgICAg
ICAgIDAgICAgICAgICAwICAgICAgICAgMCAgICAgICAgIDEgICAgICAgICAwICAgICAgICAgMiAK
ICAxMzk4MDAwOiAgICAgICAgIDEgICAgICAgICAxICAgICAgICAgMCAgICAgICAgIDIgICAgICAg
ICAwICAgICAgICAgMCAgICAgICAgIDAgICAgICAgICAwICAgICAgICAgMSAgICAgICAgIDEgICAg
ICAgICAwICAgICAgICAgMyAKICAxNTEyMDAwOiAgICAgICAgIDAgICAgICAgICAwICAgICAgICAg
MCAgICAgICAgIDAgICAgICAgICAwICAgICAgICAgMCAgICAgICAgIDAgICAgICAgICAwICAgICAg
ICAgMCAgICAgICAgIDEgICAgICAgICAwICAgICAgICAgMiAKICAxNjA4MDAwOiAgICAgICAgIDAg
ICAgICAgICAwICAgICAgICAgMCAgICAgICAgIDAgICAgICAgICAwICAgICAgICAgMCAgICAgICAg
IDAgICAgICAgICAxICAgICAgICAgMCAgICAgICAgIDAgICAgICAgICAwICAgICAgICAgMiAKICAx
NzA0MDAwOiAgICAgICAgIDAgICAgICAgICAxICAgICAgICAgMCAgICAgICAgIDAgICAgICAgICAw
ICAgICAgICAgMCAgICAgICAgIDEgICAgICAgICAwICAgICAgICAgMCAgICAgICAgIDAgICAgICAg
ICAwICAgICAgICAgMiAKICAxODk2MDAwOiAgICAgICAgIDAgICAgICAgICAwICAgICAgICAgMSAg
ICAgICAgIDAgICAgICAgICAwICAgICAgICAgMCAgICAgICAgIDAgICAgICAgICAwICAgICAgICAg
MCAgICAgICAgIDAgICAgICAgICAwICAgICAgICAgMSAKICAxOTkyMDAwOiAgICAgICAgNzYgICAg
ICAgIDQ3ICAgICAgICA5MCAgICAgICAyMzAgICAgICAgMzkyICAgICAgICAgMCAgICAgICAgIDIg
ICAgICAgICAyICAgICAgICAgMSAgICAgICAgIDEgICAgICAgICAxICAgICAgICAgMCAKCk4yOn4g
IyBjYXQgL3N5cy9kZXZpY2VzL3N5c3RlbS9jcHUvY3B1ZnJlcS9wb2xpY3kyL3N0YXRzL3RyYW5z
X3RhYmxlIAogICBGcm9tICA6ICAgIFRvCiAgICAgICAgIDogICAgMTAwMDAwICAgIDI1MDAwMCAg
ICA1MDAwMDAgICAgNjY3MDAwICAgMTAwMDAwMCAgIDEyMDAwMDAgICAxMzk4MDAwICAgMTUxMjAw
MCAgIDE2MDgwMDAgICAxNzA0MDAwICAgMTgwMDAwMCAgIDE5MDgwMDAgCiAgIDEwMDAwMDogICAg
ICAgICAwICAgICAgMTY5OCAgICAgICAxMzAgICAgICAgIDc2ICAgICAgICA4NyAgICAgICAgIDAg
ICAgICAgICAwICAgICAgICAgMCAgICAgICAgIDEgICAgICAgICAwICAgICAgICAgMSAgICAgICAx
OTkgCiAgIDI1MDAwMDogICAgICAxNjU1ICAgICAgICAgMCAgICAgICAgMjUgICAgICAgIDE1ICAg
ICAgIDM1NyAgICAgICAgIDEgICAgICAgICAyICAgICAgICAgMCAgICAgICAgIDEgICAgICAgICAw
ICAgICAgICAgMCAgICAgICAgMTIgCiAgIDUwMDAwMDogICAgICAgMjU4ICAgICAgICA1NCAgICAg
ICAgIDAgICAgIDUwMTAyICAgICAgICAzMCAgICAgICAgIDMgICAgICAgICAxICAgICAgICAgMCAg
ICAgICAgIDAgICAgICAgICAwICAgICAgICAgMSAgICAgICAgMzIgCiAgIDY2NzAwMDogICAgICAg
MjY3ICAgICAgIDE1MSAgICAgNDk3MDggICAgICAgICAwICAgICAgICA3NyAgICAgICAgIDMgICAg
ICAgICAwICAgICAgICAgMCAgICAgICAgIDAgICAgICAgICAwICAgICAgICAgMCAgICAgICAgMTEg
CiAgMTAwMDAwMDogICAgICAgICAzICAgICAgICAgNSAgICAgICA1MjUgICAgICAgIDE1ICAgICAg
ICAgMCAgICAgICAgIDMgICAgICAgICAyICAgICAgICAgMCAgICAgICAgIDEgICAgICAgICAxICAg
ICAgICAgMCAgICAgICAgIDYgCiAgMTIwMDAwMDogICAgICAgICAwICAgICAgICAgMiAgICAgICAg
IDEgICAgICAgICAyICAgICAgICAgMiAgICAgICAgIDAgICAgICAgICAzICAgICAgICAgMCAgICAg
ICAgIDAgICAgICAgICAwICAgICAgICAgMSAgICAgICAgIDQgCiAgMTM5ODAwMDogICAgICAgICAx
ICAgICAgICAgMCAgICAgICAgIDEgICAgICAgICAxICAgICAgICAgNCAgICAgICAgIDAgICAgICAg
ICAwICAgICAgICAgMSAgICAgICAgIDEgICAgICAgICAwICAgICAgICAgMiAgICAgICAgIDIgCiAg
MTUxMjAwMDogICAgICAgICAwICAgICAgICAgMCAgICAgICAgIDAgICAgICAgICAwICAgICAgICAg
MCAgICAgICAgIDAgICAgICAgICAxICAgICAgICAgMCAgICAgICAgIDAgICAgICAgICAwICAgICAg
ICAgMCAgICAgICAgIDEgCiAgMTYwODAwMDogICAgICAgICAxICAgICAgICAgMCAgICAgICAgIDAg
ICAgICAgICAxICAgICAgICAgMCAgICAgICAgIDEgICAgICAgICAwICAgICAgICAgMCAgICAgICAg
IDAgICAgICAgICAwICAgICAgICAgMCAgICAgICAgIDMgCiAgMTcwNDAwMDogICAgICAgICAwICAg
ICAgICAgMCAgICAgICAgIDAgICAgICAgICAwICAgICAgICAgMCAgICAgICAgIDEgICAgICAgICAw
ICAgICAgICAgMSAgICAgICAgIDAgICAgICAgICAwICAgICAgICAgMCAgICAgICAgIDEgCiAgMTgw
MDAwMDogICAgICAgICAwICAgICAgICAgMCAgICAgICAgIDEgICAgICAgICAxICAgICAgICAgMCAg
ICAgICAgIDAgICAgICAgICAxICAgICAgICAgMCAgICAgICAgIDEgICAgICAgICAwICAgICAgICAg
MCAgICAgICAgIDEgCiAgMTkwODAwMDogICAgICAgICA4ICAgICAgIDE1OCAgICAgICAgOTAgICAg
ICAgICA0ICAgICAgICAgMyAgICAgICAgIDMgICAgICAgICAzICAgICAgICAgMCAgICAgICAgIDEg
ICAgICAgICAyICAgICAgICAgMCAgICAgICAgIDAgCgpCb2FyZCBib290cyBpbiB1bmRlciA0IHNl
Y29uZHMsIEtvZGkgaG9tZS1zY3JlZW4gaW4gYWJvdXQgNyBzZWNvbmRzLiBJIGhhdmVu4oCZdCBz
ZWVuIHRoZSBOMiByaXNlIG92ZXIgNDTCukMuCgpJ4oCZdmUgYWxzbyB0ZXN0ZWQgc29tZSBTOTIy
WCBib3ggZGV2aWNlcyAobW92aW5nIHRoZSBjaGFuZ2UgdG8gbWVzb24tZzEyYi1zOTIyeC5kdHNp
KSBhbmQgbm8gb2J2aW91cyBpc3N1ZXMuCgpUZXN0ZWQtYnk6IENocmlzdGlhbiBIZXdpdHQgPGNo
cmlzdGlhbnNoZXdpdHRAZ21haWwuY29tPgoKPiAtLS0KPiAuLi4vYm9vdC9kdHMvYW1sb2dpYy9t
ZXNvbi1nMTJiLW9kcm9pZC1uMi5kdHMgfCAxOSArKysrKysrKysrKysrKysrKysrCj4gMSBmaWxl
IGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9hbWxvZ2ljL21lc29uLWcxMmItb2Ryb2lkLW4yLmR0cyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvYW1sb2dpYy9tZXNvbi1nMTJiLW9kcm9pZC1uMi5kdHMKPiBpbmRleCA0MmYxNTQwNTcu
LjZmMzJhYzgzZiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FtbG9naWMvbWVz
b24tZzEyYi1vZHJvaWQtbjIuZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbWxvZ2lj
L21lc29uLWcxMmItb2Ryb2lkLW4yLmR0cwo+IEBAIC0yNjAsNiArMjYwLDI1IEBACj4gCQkJfTsK
PiAJCX07Cj4gCX07Cj4gKwo+ICsJY3B1X29wcF90YWJsZV8wOiBvcHAtdGFibGUtMCB7Cj4gKwkJ
b3BwLTE5OTIwMDAwMDAgewo+ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDE5OTIwMDAwMDA+Owo+
ICsJCQlvcHAtbWljcm92b2x0ID0gPDEwMDEwMDA+Owo+ICsJCX07Cj4gKwl9Owo+ICsKPiArCWNw
dWJfb3BwX3RhYmxlXzE6IG9wcC10YWJsZS0xIHsKPiArCQlvcHAtMTgwMDAwMDAwMCB7Cj4gKwkJ
CW9wcC1oeiA9IC9iaXRzLyA2NCA8MTgwMDAwMDAwMD47Cj4gKwkJCW9wcC1taWNyb3ZvbHQgPSA8
OTgxMDAwPjsKPiArCQl9Owo+ICsKPiArCQlvcHAtMTkwODAwMDAwMCB7Cj4gKwkJCW9wcC1oeiA9
IC9iaXRzLyA2NCA8MTkwODAwMDAwMD47Cj4gKwkJCW9wcC1taWNyb3ZvbHQgPSA8MTAyMjAwMD47
Cj4gKwkJfTsKPiArCX07Cj4gfTsKPiAKPiAmYXJiIHsKPiAtLSAKPiAyLjE3LjEKPiAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
