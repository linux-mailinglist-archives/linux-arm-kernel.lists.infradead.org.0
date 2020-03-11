Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3968018164D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 11:54:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kz9fqkdBWh8692ZviUzK24S0cs45tXCbpQ18i5BXmlI=; b=j12w7m8+NHDWk+
	Uk0YTDUUS9+naepu/p0LmimsbrKENgT5EWKS2eq2j0llmwWtyJvj1PZwcHVxVaYZfIqkZlzFvopOD
	acNKVzCg73d2agd3s30bqoOL8NT/clNDoag9b25IsCXv4T0OltQtW+wYEAbUkQMiM3sMnxFAo6RcT
	a/+9oNm0e7pz35yvSI+169e6vl4JTqOc7z4T+iC+MS9wlQTgz/070xzBwAUsMfxTVLiKUan94DgXd
	n2knX7qBsSc41MnCk0PKLLBRCsOfmf+iWopYTX14EvqxzbZ856xlVbs5nhZDyfo6cEhcF2254ltKm
	ODu9vQPjASEJZEVhro5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBz0e-0001PD-8p; Wed, 11 Mar 2020 10:54:44 +0000
Received: from hqnvemgate25.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBz0T-0001OJ-N0
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 10:54:36 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e68c3380000>; Wed, 11 Mar 2020 03:53:45 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 11 Mar 2020 03:54:29 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 11 Mar 2020 03:54:29 -0700
Received: from [10.26.11.218] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 11 Mar
 2020 10:54:26 +0000
Subject: Re: [PATCH v2 15/17] soc: qcom: ipa: support build of IPA code
To: Alex Elder <elder@linaro.org>, David Miller <davem@davemloft.net>, Arnd
 Bergmann <arnd@arndb.de>
References: <20200306042831.17827-1-elder@linaro.org>
 <20200306042831.17827-16-elder@linaro.org>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <33e18aa5-5838-a2f2-7112-542a157bd026@nvidia.com>
Date: Wed, 11 Mar 2020 10:54:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200306042831.17827-16-elder@linaro.org>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1583924025; bh=gKHuKSFbwoxBGV/PyLPT7wPFs57coMnu/jHauOw4skQ=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=SaE7HfxfinVzma4d1xw/EsHxe6B6/c7qnS0ZKae7TP/YoiG2i/CereBQdwbtNKD25
 0XN9SO7Y+yK7aouZeAlw+Mr15xXKQU9YV1u2zrNm683VfTdhAwBWsxV6TH/gzKqV2v
 o7CAuuclgTTAB7iQS9vGpgNnnJwclyj5WgT/1BqtS7C25pgZBez/v0j4LiszNn7sU4
 14TLc2Owrb8YBTisZMhChWW03Tp0jxCS5kidpBKfHNvFY7aXcOvnZfdLVZQyje+pOV
 Sb8xRdS/pD7MyJvg+ZiMJirNzUWahOJaCAyB4GrJ4koMgzt76A5lTGE4nyjsc2CoOt
 tzoyskRj3cNrQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_035435_113082_895A81ED 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Susheel Yadav Yadagiri <syadagir@codeaurora.org>,
 Eric Caruso <ejcaruso@google.com>, devicetree@vger.kernel.org,
 Dan Williams <dcbw@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 Siddharth Gupta <sidgup@codeaurora.org>,
 Chaitanya Pratapa <cpratapa@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDA2LzAzLzIwMjAgMDQ6MjgsIEFsZXggRWxkZXIgd3JvdGU6Cj4gQWRkIGJ1aWxkIGFuZCBL
Y29uZmlnIHN1cHBvcnQgZm9yIHRoZSBRdWFsY29tbSBJUEEgZHJpdmVyLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IEFsZXggRWxkZXIgPGVsZGVyQGxpbmFyby5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvbmV0
L0tjb25maWcgICAgICB8ICAyICsrCj4gIGRyaXZlcnMvbmV0L01ha2VmaWxlICAgICB8ICAxICsK
PiAgZHJpdmVycy9uZXQvaXBhL0tjb25maWcgIHwgMTkgKysrKysrKysrKysrKysrKysrKwo+ICBk
cml2ZXJzL25ldC9pcGEvTWFrZWZpbGUgfCAxMiArKysrKysrKysrKysKPiAgNCBmaWxlcyBjaGFu
Z2VkLCAzNCBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9p
cGEvS2NvbmZpZwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvaXBhL01ha2VmaWxl
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L0tjb25maWcgYi9kcml2ZXJzL25ldC9LY29u
ZmlnCj4gaW5kZXggNjZlNDEwZTU4YzhlLi4wMjU2NWJjMmJlOGEgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9uZXQvS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvbmV0L0tjb25maWcKPiBAQCAtNDQ0LDYg
KzQ0NCw4IEBAIHNvdXJjZSAiZHJpdmVycy9uZXQvZmRkaS9LY29uZmlnIgo+ICAKPiAgc291cmNl
ICJkcml2ZXJzL25ldC9oaXBwaS9LY29uZmlnIgo+ICAKPiArc291cmNlICJkcml2ZXJzL25ldC9p
cGEvS2NvbmZpZyIKPiArCj4gIGNvbmZpZyBORVRfU0IxMDAwCj4gIAl0cmlzdGF0ZSAiR2VuZXJh
bCBJbnN0cnVtZW50cyBTdXJmYm9hcmQgMTAwMCIKPiAgCWRlcGVuZHMgb24gUE5QCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbmV0L01ha2VmaWxlIGIvZHJpdmVycy9uZXQvTWFrZWZpbGUKPiBpbmRl
eCA2NTk2NzI0NmYyNDAuLjk0YjYwODAwODg3YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9N
YWtlZmlsZQo+ICsrKyBiL2RyaXZlcnMvbmV0L01ha2VmaWxlCj4gQEAgLTQ3LDYgKzQ3LDcgQEAg
b2JqLSQoQ09ORklHX0VUSEVSTkVUKSArPSBldGhlcm5ldC8KPiAgb2JqLSQoQ09ORklHX0ZEREkp
ICs9IGZkZGkvCj4gIG9iai0kKENPTkZJR19ISVBQSSkgKz0gaGlwcGkvCj4gIG9iai0kKENPTkZJ
R19IQU1SQURJTykgKz0gaGFtcmFkaW8vCj4gK29iai0kKENPTkZJR19RQ09NX0lQQSkgKz0gaXBh
Lwo+ICBvYmotJChDT05GSUdfUExJUCkgKz0gcGxpcC8KPiAgb2JqLSQoQ09ORklHX1BQUCkgKz0g
cHBwLwo+ICBvYmotJChDT05GSUdfUFBQX0FTWU5DKSArPSBwcHAvCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2lwYS9LY29uZmlnIGIvZHJpdmVycy9uZXQvaXBhL0tjb25maWcKPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uYjhjYjdjYWRiZjc1Cj4gLS0tIC9k
ZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvbmV0L2lwYS9LY29uZmlnCj4gQEAgLTAsMCArMSwxOSBA
QAo+ICtjb25maWcgUUNPTV9JUEEKPiArCXRyaXN0YXRlICJRdWFsY29tbSBJUEEgc3VwcG9ydCIK
PiArCWRlcGVuZHMgb24gQVJDSF9RQ09NICYmIDY0QklUICYmIE5FVAo+ICsJc2VsZWN0IFFDT01f
UU1JX0hFTFBFUlMKPiArCXNlbGVjdCBRQ09NX01EVF9MT0FERVIKPiArCWRlZmF1bHQgUUNPTV9R
NlY1X0NPTU1PTgo+ICsJaGVscAo+ICsJICBDaG9vc2UgWSBvciBNIGhlcmUgdG8gaW5jbHVkZSBz
dXBwb3J0IGZvciB0aGUgUXVhbGNvbW0KPiArCSAgSVAgQWNjZWxlcmF0b3IgKElQQSksIGEgaGFy
ZHdhcmUgYmxvY2sgcHJlc2VudCBpbiBzb21lCj4gKwkgIFF1YWxjb21tIFNvQ3MuICBUaGUgSVBB
IGlzIGEgcHJvZ3JhbW1hYmxlIHByb3RvY29sIHByb2Nlc3Nvcgo+ICsJICB0aGF0IGlzIGNhcGFi
bGUgb2YgZ2VuZXJpYyBoYXJkd2FyZSBoYW5kbGluZyBvZiBJUCBwYWNrZXRzLAo+ICsJICBpbmNs
dWRpbmcgcm91dGluZywgZmlsdGVyaW5nLCBhbmQgTkFULiAgQ3VycmVudGx5IHRoZSBJUEEKPiAr
CSAgZHJpdmVyIHN1cHBvcnRzIG9ubHkgYmFzaWMgdHJhbnNwb3J0IG9mIG5ldHdvcmsgdHJhZmZp
Ywo+ICsJICBiZXR3ZWVuIHRoZSBBUCBhbmQgbW9kZW0sIG9uIHRoZSBRdWFsY29tbSBTRE04NDUg
U29DLgo+ICsKPiArCSAgTm90ZSB0aGF0IGlmIHNlbGVjdGVkLCB0aGUgc2VsZWN0aW9uIHR5cGUg
bXVzdCBtYXRjaCB0aGF0Cj4gKwkgIG9mIFFDT01fUTZWNV9DT01NT04gKFkgb3IgTSkuCj4gKwo+
ICsJICBJZiB1bnN1cmUsIHNheSBOLgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9pcGEvTWFr
ZWZpbGUgYi9kcml2ZXJzL25ldC9pcGEvTWFrZWZpbGUKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+
IGluZGV4IDAwMDAwMDAwMDAwMC4uYWZlNWRmMWU2ZWVlCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBi
L2RyaXZlcnMvbmV0L2lwYS9NYWtlZmlsZQo+IEBAIC0wLDAgKzEsMTIgQEAKPiArIyBVbi1jb21t
ZW50IHRoZSBuZXh0IGxpbmUgaWYgeW91IHdhbnQgdG8gdmFsaWRhdGUgY29uZmlndXJhdGlvbiBk
YXRhCj4gKyNjY2ZsYWdzLXkJCSs9CS1ESVBBX1ZBTElEQVRFCj4gKwo+ICtvYmotJChDT05GSUdf
UUNPTV9JUEEpCSs9CWlwYS5vCj4gKwo+ICtpcGEteQkJCTo9CWlwYV9tYWluLm8gaXBhX2Nsb2Nr
Lm8gaXBhX3JlZy5vIGlwYV9tZW0ubyBcCj4gKwkJCQlpcGFfdGFibGUubyBpcGFfaW50ZXJydXB0
Lm8gZ3NpLm8gZ3NpX3RyYW5zLm8gXAo+ICsJCQkJaXBhX2dzaS5vIGlwYV9zbXAycC5vIGlwYV91
Yy5vIFwKPiArCQkJCWlwYV9lbmRwb2ludC5vIGlwYV9jbWQubyBpcGFfbW9kZW0ubyBcCj4gKwkJ
CQlpcGFfcW1pLm8gaXBhX3FtaV9tc2cubwo+ICsKPiAraXBhLXkJCQkrPQlpcGFfZGF0YS1zZG04
NDUubyBpcGFfZGF0YS1zYzcxODAubwoKClRoaXMgcGF0Y2ggaXMgYWxzbyBjYXVzaW5nIGJ1aWxk
IGlzc3VlcyBvbiB0aGUgY3VycmVudCAtbmV4dCAuLi4KCiAgQ0MgW01dICBkcml2ZXJzL25ldC9p
cGEvZ3NpLm8KICBJbiBmaWxlIGluY2x1ZGVkIGZyb20gaW5jbHVkZS9saW51eC9idWlsZF9idWcu
aDo1OjAsCiAgICAgICAgICAgICAgICAgICBmcm9tIGluY2x1ZGUvbGludXgvYml0ZmllbGQuaDox
MCwKICAgICAgICAgICAgICAgICAgIGZyb20gZHJpdmVycy9uZXQvaXBhL2dzaS5jOjk6CiAgZHJp
dmVycy9uZXQvaXBhL2dzaS5jOiBJbiBmdW5jdGlvbiDigJhnc2lfdmFsaWRhdGVfYnVpbGTigJk6
CiAgZHJpdmVycy9uZXQvaXBhL2dzaS5jOjIyMDozOTogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0
aW9uIG9mIGZ1bmN0aW9uIOKAmGZpZWxkX21heOKAmSBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlv
bi1kZWNsYXJhdGlvbl0KICAgIEJVSUxEX0JVR19PTihHU0lfUklOR19FTEVNRU5UX1NJWkUgPiBm
aWVsZF9tYXgoRUxFTUVOVF9TSVpFX0ZNQVNLKSk7CiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgXgogIGluY2x1ZGUvbGludXgvY29tcGlsZXIuaDozNzQ6OTogbm90ZTog
aW4gZGVmaW5pdGlvbiBvZiBtYWNybyDigJhfX2NvbXBpbGV0aW1lX2Fzc2VydOKAmQogICAgIGlm
ICghKGNvbmRpdGlvbikpICAgICBcCiAgICAgICAgICAgXn5+fn5+fn5+CiAgaW5jbHVkZS9saW51
eC9jb21waWxlci5oOjM5NDoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYX2NvbXBp
bGV0aW1lX2Fzc2VydOKAmQogICAgX2NvbXBpbGV0aW1lX2Fzc2VydChjb25kaXRpb24sIG1zZywg
X19jb21waWxldGltZV9hc3NlcnRfLCBfX0xJTkVfXykKICAgIF5+fn5+fn5+fn5+fn5+fn5+fn4K
ICBpbmNsdWRlL2xpbnV4L2J1aWxkX2J1Zy5oOjM5OjM3OiBub3RlOiBpbiBleHBhbnNpb24gb2Yg
bWFjcm8g4oCYY29tcGlsZXRpbWVfYXNzZXJ04oCZCiAgICNkZWZpbmUgQlVJTERfQlVHX09OX01T
Ryhjb25kLCBtc2cpIGNvbXBpbGV0aW1lX2Fzc2VydCghKGNvbmQpLCBtc2cpCiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fgogIGluY2x1ZGUv
bGludXgvYnVpbGRfYnVnLmg6NTA6Mjogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmEJV
SUxEX0JVR19PTl9NU0figJkKICAgIEJVSUxEX0JVR19PTl9NU0coY29uZGl0aW9uLCAiQlVJTERf
QlVHX09OIGZhaWxlZDogIiAjY29uZGl0aW9uKQogICAgXn5+fn5+fn5+fn5+fn5+fgogIGRyaXZl
cnMvbmV0L2lwYS9nc2kuYzoyMjA6Mjogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmEJV
SUxEX0JVR19PTuKAmQogICAgQlVJTERfQlVHX09OKEdTSV9SSU5HX0VMRU1FTlRfU0laRSA+IGZp
ZWxkX21heChFTEVNRU5UX1NJWkVfRk1BU0spKTsKICAgIF5+fn5+fn5+fn5+fgoKSm9uIAoKLS0g
Cm52cHVibGljCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
