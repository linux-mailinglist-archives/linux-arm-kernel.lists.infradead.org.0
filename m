Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F8912592
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 02:37:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kyNovJ+p9xSOiP2UEaaI/aZmpE68CwglJJigU/JkBYk=; b=mf5u1075lN4H7q
	F/J5R7ma3GHRjWDTK/Q/Hcxy0fL+kgJqfAlt//XAIXUCLt6QtTKSixD6jFW/Hu5PpkorDiGH3Vgsz
	pzu0VCkTrnvWTl7PD7lRAE8GX8RM3RZxlqKiDrSusYfVuqnIVX7Nh1ytsB8uF373ky6sV13syBPfR
	VERrsi7kYRm5LIpye5eB7FvOnPgPUOX9YDKA8ftwUM1w6CbeVDNjE0aEzmNww0znxVTKupn0T7oT+
	DUTos8nFHVmTLnrV+Xnz0h+/X75nQzhe/e7C5IR/aLuNCbrpaLG/yMaJxFLunR9eXAC6wCgYRi+2y
	5+WEvtqSy0PVcaHwmjsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMMD2-0001Gm-CF; Fri, 03 May 2019 00:37:52 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMMCv-0001F9-50
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 00:37:47 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190503003739epoutp040e9bc6dec3ecef9dd930eb0b039b0bb9~bBT3U7_T_0680706807epoutp04G
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  3 May 2019 00:37:39 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190503003739epoutp040e9bc6dec3ecef9dd930eb0b039b0bb9~bBT3U7_T_0680706807epoutp04G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1556843859;
 bh=KRiTcCLONHAf3ZOccDuMVHOfG8NnD0V80VdNty/1po4=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=jn3DC53jAz8jyRomRfK0d9j1a+fXEpFwWIbLmsL5/Hj6mPlu9GpGsbTI/SDusGg7B
 JLxazJXshzgut8cn5Q+1RlPh2Q+YTtzygt6DRXI93H9A5EsANCi326m8yVemq614YF
 zR82vSH5IhavXtpLX3ip2p27SQlTrW4M8xQHMcjw=
Received: from epsmges1p5.samsung.com (unknown [182.195.40.157]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20190503003736epcas1p37d0532eeef19bbd82beec699e08a12b1~bBT0vVVMG1501515015epcas1p3M;
 Fri,  3 May 2019 00:37:36 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 58.34.04108.05D8BCC5; Fri,  3 May 2019 09:37:36 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190503003736epcas1p1931ca897b3e8d0b062ae3f889c1fe82e~bBT0aDhW81473614736epcas1p1m;
 Fri,  3 May 2019 00:37:36 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190503003736epsmtrp27ebc4796af6103b873b211809d1d45a7~bBT0WE_J-2618626186epsmtrp2Q;
 Fri,  3 May 2019 00:37:36 +0000 (GMT)
X-AuditID: b6c32a39-89fff7000000100c-59-5ccb8d50ca83
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 3A.39.03692.F4D8BCC5; Fri,  3 May 2019 09:37:35 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190503003735epsmtip29efd006b32d27ac2d4d1100ae346f5fd~bBT0AcSbU0152201522epsmtip2f;
 Fri,  3 May 2019 00:37:35 +0000 (GMT)
Subject: Re: [PATCH v5 3/6] devfreq: rk3399_dmc: Pass ODT and auto power
 down parameters to TF-A.
To: =?UTF-8?Q?Ga=c3=abl_PORTAY?= <gael.portay@collabora.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Rob
 Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Enric
 Balletbo i Serra <enric.balletbo@collabora.com>, Lin Huang
 <hl@rock-chips.com>, Brian Norris <briannorris@chromium.org>, Douglas
 Anderson <dianders@chromium.org>, Klaus Goger
 <klaus.goger@theobroma-systems.com>, Derek Basehore
 <dbasehore@chromium.org>, Randy Li <ayaka@soulik.info>,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <b7daf957-1dd3-3045-4752-fc6a01b9821b@samsung.com>
Date: Fri, 3 May 2019 09:38:54 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502175820.25382-4-gael.portay@collabora.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01TbUxTVxjOubf3Upwdd8WPlyZz5Tp/0ATkCmWni2UmuuUmmoxkczEbWb2B
 O2D9tLeYMX8IEhyyuuhc4qxMmcLQihMLsqYbVjrsAk4CGMCMNCAwMxjBIcGPiWFtb83495zn
 fd73Oc/5UJLqZVqjLLO5RKdNsLD0KkXHrxlZmQVHbxVmu8MaPBP5F2Hf/AMKz7T9QuOz3X0U
 vv1DF41bRkMINwZmabw88TeFn7T2kritz03hxRPNBL59aDYJ+yaHKXwnUE/jhaPdCD8cXyZx
 08gAgUerLtC4prM7aVsq33KmBfGnKwcUvD/SiHif9wjNtzUe5J97ggr+q3Yv4n8aPkPy1ZGT
 FH95olXBL/g2FLz0oXlrqSgUi06taCuyF5fZSozszvdM2036vGwukzPgN1itTbCKRnbHroLM
 d8os0Xysdr9gKY9SBYIksZvztzrt5S5RW2qXXEZWdBRbHAZHliRYpXJbSVaR3foml529RR8V
 7jWXhr1VhONH/Wd9PT6yEt3U1aFkJTC50Hn9BqpDq5Rqxo8gONijkBcPEVzuuk7Ki0cIRgYv
 0S9aepfvJQqdCELhR1SsoGYeIBhtMsZwKlME009HiJhoDdNMwaXBAIoVSMYIVVefETFMMzoI
 /nU3PjWFSYehJ5NxjYrJh+DosTivYF6Haw1/xvVrmT0wFm6lZM0r0HNqShHDycxb0Fo9RMnz
 18MfU2cJGb8G1ddOx3cKzHwSROprCDnCDugfeJqIkwozv7UnyVgDC3OdCf4AXOzppuXmWgTt
 wX5KLuRAsOlEdJAy6pABVwKbZbOXYW7RTcVoYFRQe1gtqzfCnfFIwjYNzn9xJDGeh8f++8Qx
 lO5ZEcezIoJnRQTP/2YNSOFF60SHZC0RJc6hX3ndPhR//DqDH4X7doUQo0TsapVjvLdQTQn7
 pQprCIGSZNeoPp6PUqpioeJz0Wk3OcstohRC+uhpHyc1a4vs0a9kc5k4/ZacnBycy+XpOY5d
 r7qybXuhmikRXKJZFB2i80UfoUzWVCLzp29XhWHW3/8N4haP32vMm/qIuLW7zLz03ST1fuWz
 vZ+sM8ytHq/J37dU8XOzcueGBXCbvk53Wb58NbW/6/H302m6873ntIeXUrz1Y3VXDWnTmRvt
 5j35wyc35XYcCBxszhi7r7sBH+y7m/J7w8REx6bnF991nzt085TwD1mL5r8dYhVSqcDpSKck
 /AfqCPUoEgQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRzGeXcuO85Wp83w9Za0BHGgKVm8kGn0pRMI+SUrkWzpSSU3147O
 jEHa8oPmREmNZt7CSpfG3PKSZeY9LYVpmiaCVzIzRUVYWiy3Efjtx/M8P/5f/hQm+oF7UsmK
 NFalkKVISAHe3C3xDbyg+xQbPGsOQ8vT2wCZ1tcItGx+R6LKnmECDT3vJFH9VBdANW0rJLLN
 /SSQ1TiIIfNwPoG2Hr7goaF7K3xkmh8n0GjbExJt6noA2pixYejZVwsPTWXXkiinvYd/RszU
 V9QDpizLgjOt0zWAMRlyScZcc5f5q+/AmYLXBsC0jFdgjHb6EcE0zBlxZtN0OMo1RhCWwKYk
 q1nVsfBrgqQ+QzZP+erE7eEBE5YFeqV5wIWCdCgctM1ieUBAiei3AL7facechQcstfTuMrXL
 YtjdzTk3vwCs2tY5cjEdD58aFPbcja4jYIm+gW93Mfo0zG7c4TmFfgB1bzp59oKkpbBjaYK0
 8wH6CByzzgM7C+lw2DFV6Mhx2g82VS069ofoy/DzWi3u3ByEA48XHOxCR0CjdoxwHvOHfypG
 MCe7w28LlTwn+0JtUxlWCMT6Pbp+j6Lfo+j3KFUANwAPVsnJE+VciDJEwWYEcTI5l65IDIpP
 lZuA4wGkAa1gtCauC9AUkOwTKmcGY0WETM1lyrsApDCJm/Dq+m4kTJBl3mFVqXGq9BSW6wJe
 FC5xFy4q+q6I6ERZGnuTZZWs6n/Lo1w8s8D9mCWg9J7iT0TbmiczLla6vYyKtF1vmW58UFCn
 8TZWESPBrrmnbugiNPNt+1f7NySrmkvVfviH8tyTASUitcz3tyaorXi0QXeurLjXEim9FRhK
 FlVYF47urAVt+ZdOlp8vchF185MyvTbP5mvV7pRPzndr9ZcGRfTH4+M+7QUSnEuShUgxFSf7
 B+flJwb8AgAA
X-CMS-MailID: 20190503003736epcas1p1931ca897b3e8d0b062ae3f889c1fe82e
X-Msg-Generator: CA
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190502175830epcas4p24538d3c364ce1dd1608b474fba133f22
References: <20190502175820.25382-1-gael.portay@collabora.com>
 <CGME20190502175830epcas4p24538d3c364ce1dd1608b474fba133f22@epcas4p2.samsung.com>
 <20190502175820.25382-4-gael.portay@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_173745_358077_EA1D1921 
X-CRM114-Status: GOOD (  31.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, kernel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgCgpBbHNvLCB0aGlzIHBhdGNoIHdhcyBhcHBsaWVkIHRvIGxpbnV4LXBtLmdpdCBmb3IgZm9y
IHY1LjItcmMxLgoKWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L3JhZmFlbC9saW51eC1wbS5naXQvY29tbWl0Lz9oPWJsZWVkaW5nLWVkZ2UmaWQ9YWRm
ZTNiNzY2MDhmZmU1NDdhZjVhNzQ0MTVmMTU0OTliNzk4ZjMyYQoKT24gMTkuIDUuIDMuIOyYpOyg
hCAyOjU4LCBHYcOrbCBQT1JUQVkgd3JvdGU6Cj4gRnJvbTogRW5yaWMgQmFsbGV0Ym8gaSBTZXJy
YSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNvbT4KPiAKPiBUcnVzdGVkIEZpcm13YXJlLUEg
KFRGLUEpIGZvciByazMzOTkgaW1wbGVtZW50cyBhIFNpUCBjYWxsIHRvIGdldCB0aGUKPiBvbi1k
aWUgdGVybWluYXRpb24gKE9EVCkgYW5kIGF1dG8gcG93ZXIgZG93biBwYXJhbWV0ZXJzIGZyb20g
a2VybmVsLAo+IHRoaXMgcGF0Y2ggYWRkcyB0aGUgZnVuY3Rpb25hbGl0eSB0byBkbyB0aGlzLiBB
bHNvLCBpZiBERFIgY2xvY2sKPiBmcmVxdWVuY3kgaXMgbG93ZXIgdGhhbiB0aGUgb24tZGllIHRl
cm1pbmF0aW9uIChPRFQpIGRpc2FibGUgZnJlcXVlbmN5Cj4gdGhpcyBkcml2ZXIgc2hvdWxkIGRp
c2FibGUgdGhlIEREUiBPRFQuCj4gCj4gU2lnbmVkLW9mZi1ieTogRW5yaWMgQmFsbGV0Ym8gaSBT
ZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNvbT4KPiBSZXZpZXdlZC1ieTogQ2hhbndv
byBDaG9pIDxjdzAwLmNob2lAc2Ftc3VuZy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogR2HDq2wgUE9S
VEFZIDxnYWVsLnBvcnRheUBjb2xsYWJvcmEuY29tPgo+IEFja2VkLWJ5OiBNeXVuZ0pvbyBIYW0g
PG15dW5nam9vLmhhbUBzYW1zdW5nLmNvbT4KPiAtLS0KPiAKPiBDaGFuZ2VzIGluIHY1OiBOb25l
Cj4gCj4gQ2hhbmdlcyBpbiB2NDoKPiAtIFtQQVRDSCB2MyAzLzVdIEFkZCBBY2tlZC1ieTogTXl1
bmdKb28gSGFtIDxteXVuZ2pvby5oYW1Ac2Ftc3VuZy5jb20+Lgo+IAo+IENoYW5nZXMgaW4gdjM6
Cj4gLSBbUEFUQ0ggdjIgMy81XSBBZGQgU2lnbmVkLW9mZi1ieTogR2HDq2wgUE9SVEFZIDxnYWVs
LnBvcnRheUBjb2xsYWJvcmEuY29tPi4KPiAJCSBSZW1vdmUgY29tbWVudHMuCj4gCQkgTW92ZSBw
bXUgZHQgcGFyc2luZyBhZnRlciBkdC1wYXJzaW5nIG9mIHRpbWluZ3MgdG8gZml4Cj4gCQkgIGRh
dGEtPm9kdF9kaXNfZnJlcSB2YWx1ZS4KPiAKPiBDaGFuZ2VzIGluIHYyOiBOb25lCj4gCj4gQ2hh
bmdlcyBpbiB2MToKPiAtIFtSRkMgMy8xMF0gQWRkIGFuIGV4cGxhbmF0aW9uIGZvciBwbGF0Zm9y
bSBTSVAgY2FsbHMuCj4gLSBbUkZDIDMvMTBdIENoYW5nZSBpZiBzdGF0ZW1lbnQgZm9yIGEgc3dp
dGNoLgo+IC0gW1JGQyAzLzEwXSBSZW5hbWUgZGRyX2ZsYWcgdG8gb2R0X2VuYWJsZSB0byBiZSBt
b3JlIGNsZWFyLgo+IAo+ICBkcml2ZXJzL2RldmZyZXEvcmszMzk5X2RtYy5jICAgICAgICB8IDcx
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKystCj4gIGluY2x1ZGUvc29jL3JvY2tjaGlwL3Jv
Y2tjaGlwX3NpcC5oIHwgIDEgKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDcxIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL3JrMzM5OV9k
bWMuYyBiL2RyaXZlcnMvZGV2ZnJlcS9yazMzOTlfZG1jLmMKPiBpbmRleCBlNzk1YWQyYjNmNmIu
LmRhZjE5ZTEyMWM5OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvcmszMzk5X2RtYy5j
Cj4gKysrIGIvZHJpdmVycy9kZXZmcmVxL3JrMzM5OV9kbWMuYwo+IEBAIC0xOCwxNCArMTgsMTcg
QEAKPiAgI2luY2x1ZGUgPGxpbnV4L2RldmZyZXEuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2RldmZy
ZXEtZXZlbnQuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2ludGVycnVwdC5oPgo+ICsjaW5jbHVkZSA8
bGludXgvbWZkL3N5c2Nvbi5oPgo+ICAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gICNpbmNs
dWRlIDxsaW51eC9vZi5oPgo+ICAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4g
ICNpbmNsdWRlIDxsaW51eC9wbV9vcHAuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgo+
ICAjaW5jbHVkZSA8bGludXgvcmVndWxhdG9yL2NvbnN1bWVyLmg+Cj4gICNpbmNsdWRlIDxsaW51
eC9yd3NlbS5oPgo+ICAjaW5jbHVkZSA8bGludXgvc3VzcGVuZC5oPgo+ICAKPiArI2luY2x1ZGUg
PHNvYy9yb2NrY2hpcC9yazMzOTlfZ3JmLmg+Cj4gICNpbmNsdWRlIDxzb2Mvcm9ja2NoaXAvcm9j
a2NoaXBfc2lwLmg+Cj4gIAo+ICBzdHJ1Y3QgZHJhbV90aW1pbmcgewo+IEBAIC02OSw4ICs3Miwx
MSBAQCBzdHJ1Y3QgcmszMzk5X2RtY2ZyZXEgewo+ICAJc3RydWN0IG11dGV4IGxvY2s7Cj4gIAlz
dHJ1Y3QgZHJhbV90aW1pbmcgdGltaW5nOwo+ICAJc3RydWN0IHJlZ3VsYXRvciAqdmRkX2NlbnRl
cjsKPiArCXN0cnVjdCByZWdtYXAgKnJlZ21hcF9wbXU7Cj4gIAl1bnNpZ25lZCBsb25nIHJhdGUs
IHRhcmdldF9yYXRlOwo+ICAJdW5zaWduZWQgbG9uZyB2b2x0LCB0YXJnZXRfdm9sdDsKPiArCXVu
c2lnbmVkIGludCBvZHRfZGlzX2ZyZXE7Cj4gKwlpbnQgb2R0X3BkX2FyZzAsIG9kdF9wZF9hcmcx
Owo+ICB9Owo+ICAKPiAgc3RhdGljIGludCByazMzOTlfZG1jZnJlcV90YXJnZXQoc3RydWN0IGRl
dmljZSAqZGV2LCB1bnNpZ25lZCBsb25nICpmcmVxLAo+IEBAIC04MCw2ICs4Niw4IEBAIHN0YXRp
YyBpbnQgcmszMzk5X2RtY2ZyZXFfdGFyZ2V0KHN0cnVjdCBkZXZpY2UgKmRldiwgdW5zaWduZWQg
bG9uZyAqZnJlcSwKPiAgCXN0cnVjdCBkZXZfcG1fb3BwICpvcHA7Cj4gIAl1bnNpZ25lZCBsb25n
IG9sZF9jbGtfcmF0ZSA9IGRtY2ZyZXEtPnJhdGU7Cj4gIAl1bnNpZ25lZCBsb25nIHRhcmdldF92
b2x0LCB0YXJnZXRfcmF0ZTsKPiArCXN0cnVjdCBhcm1fc21jY2NfcmVzIHJlczsKPiArCWJvb2wg
b2R0X2VuYWJsZSA9IGZhbHNlOwo+ICAJaW50IGVycjsKPiAgCj4gIAlvcHAgPSBkZXZmcmVxX3Jl
Y29tbWVuZGVkX29wcChkZXYsIGZyZXEsIGZsYWdzKTsKPiBAQCAtOTUsNiArMTAzLDE5IEBAIHN0
YXRpYyBpbnQgcmszMzk5X2RtY2ZyZXFfdGFyZ2V0KHN0cnVjdCBkZXZpY2UgKmRldiwgdW5zaWdu
ZWQgbG9uZyAqZnJlcSwKPiAgCj4gIAltdXRleF9sb2NrKCZkbWNmcmVxLT5sb2NrKTsKPiAgCj4g
KwlpZiAodGFyZ2V0X3JhdGUgPj0gZG1jZnJlcS0+b2R0X2Rpc19mcmVxKQo+ICsJCW9kdF9lbmFi
bGUgPSB0cnVlOwo+ICsKPiArCS8qCj4gKwkgKiBUaGlzIG1ha2VzIGEgU01DIGNhbGwgdG8gdGhl
IFRGLUEgdG8gc2V0IHRoZSBERFIgUEQgKHBvd2VyLWRvd24pCj4gKwkgKiB0aW1pbmdzIGFuZCB0
byBlbmFibGUgb3IgZGlzYWJsZSB0aGUgT0RUIChvbi1kaWUgdGVybWluYXRpb24pCj4gKwkgKiBy
ZXNpc3RvcnMuCj4gKwkgKi8KPiArCWFybV9zbWNjY19zbWMoUk9DS0NISVBfU0lQX0RSQU1fRlJF
USwgZG1jZnJlcS0+b2R0X3BkX2FyZzAsCj4gKwkJICAgICAgZG1jZnJlcS0+b2R0X3BkX2FyZzEs
Cj4gKwkJICAgICAgUk9DS0NISVBfU0lQX0NPTkZJR19EUkFNX1NFVF9PRFRfUEQsCj4gKwkJICAg
ICAgb2R0X2VuYWJsZSwgMCwgMCwgMCwgJnJlcyk7Cj4gKwo+ICAJLyoKPiAgCSAqIElmIGZyZXF1
ZW5jeSBzY2FsaW5nIGZyb20gbG93IHRvIGhpZ2gsIGFkanVzdCB2b2x0YWdlIGZpcnN0Lgo+ICAJ
ICogSWYgZnJlcXVlbmN5IHNjYWxpbmcgZnJvbSBoaWdoIHRvIGxvdywgYWRqdXN0IGZyZXF1ZW5j
eSBmaXJzdC4KPiBAQCAtMjk0LDExICszMTUsMTMgQEAgc3RhdGljIGludCByazMzOTlfZG1jZnJl
cV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICB7Cj4gIAlzdHJ1Y3QgYXJt
X3NtY2NjX3JlcyByZXM7Cj4gIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+IC0J
c3RydWN0IGRldmljZV9ub2RlICpucCA9IHBkZXYtPmRldi5vZl9ub2RlOwo+ICsJc3RydWN0IGRl
dmljZV9ub2RlICpucCA9IHBkZXYtPmRldi5vZl9ub2RlLCAqbm9kZTsKPiAgCXN0cnVjdCByazMz
OTlfZG1jZnJlcSAqZGF0YTsKPiAgCWludCByZXQsIGluZGV4LCBzaXplOwo+ICAJdWludDMyX3Qg
KnRpbWluZzsKPiAgCXN0cnVjdCBkZXZfcG1fb3BwICpvcHA7Cj4gKwl1MzIgZGRyX3R5cGU7Cj4g
Kwl1MzIgdmFsOwo+ICAKPiAgCWRhdGEgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2Yoc3RydWN0
IHJrMzM5OV9kbWNmcmVxKSwgR0ZQX0tFUk5FTCk7Cj4gIAlpZiAoIWRhdGEpCj4gQEAgLTM1NCwx
MCArMzc3LDU2IEBAIHN0YXRpYyBpbnQgcmszMzk5X2RtY2ZyZXFfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPiAgCQl9Cj4gIAl9Cj4gIAo+ICsJbm9kZSA9IG9mX3BhcnNlX3Bo
YW5kbGUobnAsICJyb2NrY2hpcCxwbXUiLCAwKTsKPiArCWlmIChub2RlKSB7Cj4gKwkJZGF0YS0+
cmVnbWFwX3BtdSA9IHN5c2Nvbl9ub2RlX3RvX3JlZ21hcChub2RlKTsKPiArCQlpZiAoSVNfRVJS
KGRhdGEtPnJlZ21hcF9wbXUpKQo+ICsJCQlyZXR1cm4gUFRSX0VSUihkYXRhLT5yZWdtYXBfcG11
KTsKPiArCX0KPiArCj4gKwlyZWdtYXBfcmVhZChkYXRhLT5yZWdtYXBfcG11LCBSSzMzOTlfUE1V
R1JGX09TX1JFRzIsICZ2YWwpOwo+ICsJZGRyX3R5cGUgPSAodmFsID4+IFJLMzM5OV9QTVVHUkZf
RERSVFlQRV9TSElGVCkgJgo+ICsJCSAgICBSSzMzOTlfUE1VR1JGX0REUlRZUEVfTUFTSzsKPiAr
Cj4gKwlzd2l0Y2ggKGRkcl90eXBlKSB7Cj4gKwljYXNlIFJLMzM5OV9QTVVHUkZfRERSVFlQRV9E
RFIzOgo+ICsJCWRhdGEtPm9kdF9kaXNfZnJlcSA9IGRhdGEtPnRpbWluZy5kZHIzX29kdF9kaXNf
ZnJlcTsKPiArCQlicmVhazsKPiArCWNhc2UgUkszMzk5X1BNVUdSRl9ERFJUWVBFX0xQRERSMzoK
PiArCQlkYXRhLT5vZHRfZGlzX2ZyZXEgPSBkYXRhLT50aW1pbmcubHBkZHIzX29kdF9kaXNfZnJl
cTsKPiArCQlicmVhazsKPiArCWNhc2UgUkszMzk5X1BNVUdSRl9ERFJUWVBFX0xQRERSNDoKPiAr
CQlkYXRhLT5vZHRfZGlzX2ZyZXEgPSBkYXRhLT50aW1pbmcubHBkZHI0X29kdF9kaXNfZnJlcTsK
PiArCQlicmVhazsKPiArCWRlZmF1bHQ6Cj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gKwl9Owo+ICsK
PiAgCWFybV9zbWNjY19zbWMoUk9DS0NISVBfU0lQX0RSQU1fRlJFUSwgMCwgMCwKPiAgCQkgICAg
ICBST0NLQ0hJUF9TSVBfQ09ORklHX0RSQU1fSU5JVCwKPiAgCQkgICAgICAwLCAwLCAwLCAwLCAm
cmVzKTsKPiAgCj4gKwkvKgo+ICsJICogSW4gVEYtQSB0aGVyZSBpcyBhIHBsYXRmb3JtIFNJUCBj
YWxsIHRvIHNldCB0aGUgUEQgKHBvd2VyLWRvd24pCj4gKwkgKiB0aW1pbmdzIGFuZCB0byBlbmFi
bGUgb3IgZGlzYWJsZSB0aGUgT0RUIChvbi1kaWUgdGVybWluYXRpb24pLgo+ICsJICogVGhpcyBj
YWxsIG5lZWRzIHRocmVlIGFyZ3VtZW50cyBhcyBmb2xsb3dzOgo+ICsJICoKPiArCSAqIGFyZzA6
Cj4gKwkgKiAgICAgYml0WzAtN10gICA6IHNyX2lkbGUKPiArCSAqICAgICBiaXRbOC0xNV0gIDog
c3JfbWNfZ2F0ZV9pZGxlCj4gKwkgKiAgICAgYml0WzE2LTMxXSA6IHN0YW5kYnkgaWRsZQo+ICsJ
ICogYXJnMToKPiArCSAqICAgICBiaXRbMC0xMV0gIDogcGRfaWRsZQo+ICsJICogICAgIGJpdFsx
Ni0yN10gOiBzcnBkX2xpdGVfaWRsZQo+ICsJICogYXJnMjoKPiArCSAqICAgICBiaXRbMF0gICAg
IDogb2R0IGVuYWJsZQo+ICsJICovCj4gKwlkYXRhLT5vZHRfcGRfYXJnMCA9IChkYXRhLT50aW1p
bmcuc3JfaWRsZSAmIDB4ZmYpIHwKPiArCQkJICAgICgoZGF0YS0+dGltaW5nLnNyX21jX2dhdGVf
aWRsZSAmIDB4ZmYpIDw8IDgpIHwKPiArCQkJICAgICgoZGF0YS0+dGltaW5nLnN0YW5kYnlfaWRs
ZSAmIDB4ZmZmZikgPDwgMTYpOwo+ICsJZGF0YS0+b2R0X3BkX2FyZzEgPSAoZGF0YS0+dGltaW5n
LnBkX2lkbGUgJiAweGZmZikgfAo+ICsJCQkgICAgKChkYXRhLT50aW1pbmcuc3JwZF9saXRlX2lk
bGUgJiAweGZmZikgPDwgMTYpOwo+ICsKPiAgCS8qCj4gIAkgKiBXZSBhZGQgYSBkZXZmcmVxIGRy
aXZlciB0byBvdXIgcGFyZW50IHNpbmNlIGl0IGhhcyBhIGRldmljZSB0cmVlIG5vZGUKPiAgCSAq
IHdpdGggb3BlcmF0aW5nIHBvaW50cy4KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9zb2Mvcm9ja2No
aXAvcm9ja2NoaXBfc2lwLmggYi9pbmNsdWRlL3NvYy9yb2NrY2hpcC9yb2NrY2hpcF9zaXAuaAo+
IGluZGV4IDdlMjgwOTJjNGQzZC4uYWQ5NDgyYzU2Nzk3IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUv
c29jL3JvY2tjaGlwL3JvY2tjaGlwX3NpcC5oCj4gKysrIGIvaW5jbHVkZS9zb2Mvcm9ja2NoaXAv
cm9ja2NoaXBfc2lwLmgKPiBAQCAtMjMsNSArMjMsNiBAQAo+ICAjZGVmaW5lIFJPQ0tDSElQX1NJ
UF9DT05GSUdfRFJBTV9HRVRfUkFURQkweDA1Cj4gICNkZWZpbmUgUk9DS0NISVBfU0lQX0NPTkZJ
R19EUkFNX0NMUl9JUlEJMHgwNgo+ICAjZGVmaW5lIFJPQ0tDSElQX1NJUF9DT05GSUdfRFJBTV9T
RVRfUEFSQU0JMHgwNwo+ICsjZGVmaW5lIFJPQ0tDSElQX1NJUF9DT05GSUdfRFJBTV9TRVRfT0RU
X1BECTB4MDgKPiAgCj4gICNlbmRpZgo+IAoKCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hv
aQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
