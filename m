Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF73A340A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FNRibljhjFFD51ya8EpEScDbi/iRu+HLh55UVp4sJrg=; b=VeTj2gPaoFvlFv
	oKYvp+NTQ1xXxzUrOq5vFkKp/sYq+F1/INYuxcHi2w1jnSDyaqyxsEel1o3mGesO53xpJMvtnYRzy
	iqsKQeola7F29YySxVcseKtMICJbne5fy5m+GrD0L/STANBlaNl+A3MLUwprGB+3jtwJGJczCdxaJ
	j2LFWtjCxEb544sr4rqG1EajA/0qKtNVipGCu4IOmjc0eY07fML90bs1U/tk18CdGq69XtbGRz39P
	GEdnipv42YdgKCz/rJcMv0qa5Qu3nX/IKh5XxicAscsWG+QnAfLxClaJpUJJRb7qSE5+5itg+TrZk
	ECQ5/8CC3vsH3AK/39cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dGL-0005fy-I6; Fri, 30 Aug 2019 09:32:09 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dGA-0005ey-GN
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:32:02 +0000
Received: by mail-ed1-f66.google.com with SMTP id z9so2018112edq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 02:31:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=quxTjiQEbSMBklWmXgExSrqlngqxZMn93Jw/def3jQU=;
 b=aSNkomOfqWJBRzOYxi786LfNDcYzPSGi7uWWCld8WgJk/KorYfAL7tECfeGVp1eGm7
 9eiBLs7V7SDtuVY++8DOtnxYltNvDgq8GqMq9Lsh9nRxtAhFK65Sh8ZCI8hegmxfiIjk
 3osCdz5AFm1+ALhUF0Xml1JzX6GVI75uTS4iIw3RnM27PmhHPOBeaQKsa4lvS3XRUXqn
 ldkcCj4bs+GloIOSIgzkKt6a04ToSk8CLiIkgGhUrscVOI9KNCLuGa0oTDaQplUYK/is
 8IwuKp3lMCjeZ4m00a5uCSj6kr4xGIA5DIHqVf62V/dqzh1XuW8gJOu1Kdvi1vY9BG0O
 9OUA==
X-Gm-Message-State: APjAAAW7s3A18N9wireAXJWP/S5B2ZtvAD6X18Jlf0sV+eQHhAirqZSx
 z+NVEnRhFZN0qD2fAbmD5aHB6FXLFhA=
X-Google-Smtp-Source: APXvYqyy/4m+nZF3qE1hydjPG3VNnBsPid1jjoVtjQ1iI7Cl/2km+Ct7b/vgZz8mUfhz3VdneC3gSA==
X-Received: by 2002:a05:6402:894:: with SMTP id
 e20mr14395170edy.69.1567157514996; 
 Fri, 30 Aug 2019 02:31:54 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com.
 [209.85.221.53])
 by smtp.gmail.com with ESMTPSA id l27sm723492ejd.31.2019.08.30.02.31.54
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Aug 2019 02:31:54 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id z11so6266113wrt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 02:31:54 -0700 (PDT)
X-Received: by 2002:a5d:6785:: with SMTP id v5mr6428772wru.9.1567157508357;
 Fri, 30 Aug 2019 02:31:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190821210056.11995-1-alejandro.gonzalez.correo@gmail.com>
In-Reply-To: <20190821210056.11995-1-alejandro.gonzalez.correo@gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 30 Aug 2019 17:31:35 +0800
X-Gmail-Original-Message-ID: <CAGb2v64X4jbXcg1rnmmb5m=D+WUr-=Bg=6GyJckLf19jMP7PBw@mail.gmail.com>
Message-ID: <CAGb2v64X4jbXcg1rnmmb5m=D+WUr-=Bg=6GyJckLf19jMP7PBw@mail.gmail.com>
Subject: Re: [RESEND PATCH 1/1] rtc: sun6i: Allow using as wakeup source from
 suspend
To: =?UTF-8?Q?Alejandro_Gonz=C3=A1lez?= <alejandro.gonzalez.correo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_023158_547164_556659BA 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgNTowMSBBTSBBbGVqYW5kcm8gR29uesOhbGV6CjxhbGVq
YW5kcm8uZ29uemFsZXouY29ycmVvQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHBhdGNoIGFs
bG93cyB1c2Vyc3BhY2UgdG8gc2V0IHVwIHdha2V1cCBhbGFybXMgb24gYW55IFJUQyBoYW5kbGVk
IGJ5IHRoZQo+IHN1bjZpIGRyaXZlciwgYW5kIGFkZHMgdGhlIG5lY2Vzc2FyeSBQTSBvcGVyYXRp
b25zIHRvIGFsbG93IHJlc3VtaW5nIGZyb20KPiBzdXNwZW5kIHdoZW4gdGhlIGNvbmZpZ3VyZWQg
d2FrZXVwIGFsYXJtIGZpcmVzIGEgSVJRLiBPZiBjb3Vyc2UsIHRoYXQgdGhlCj4gZGV2aWNlIGFj
dHVhbGx5IHJlc3VtZXMgZGVwZW5kcyBvbiB0aGUgc3VzcGVuZCBzdGF0ZSBhbmQgaG93IGEgcGFy
dGljdWxhcgo+IGhhcmR3YXJlIHJlYWN0cyB0byBpdCwgYnV0IHRoYXQgaXMgb3V0IG9mIHNjb3Bl
IGZvciB0aGlzIHBhdGNoLgo+Cj4gSSd2ZSB0ZXN0ZWQgdGhlc2UgY2hhbmdlcyBvbiBhIFBpbmUg
SDY0IG1vZGVsIEIsIHdoaWNoIGNvbnRhaW5zIGEKPiBBbGx3aW5uZXIgSDYgU29DLCB3aXRoIHRo
ZSBoZWxwIG9mIENPTkZJR19QTV9URVNUX1NVU1BFTkQga2VybmVsIG9wdGlvbi4KPiBUaGVzZSBh
cmUgdGhlIGludGVyZXN0aW5nIG91dHB1dHMgZnJvbSB0aGUga2VybmVsIGFuZCBjb21tYW5kcyB3
aGljaAo+IHNob3cgdGhhdCBpdCB3b3Jrcy4gQXMgZXZlcnkgUlRDIGhhbmRsZWQgYnkgdGhpcyBk
cml2ZXIgaXMgbGFyZ2VseSB0aGUKPiBzYW1lLCBJIHRoaW5rIHRoYXQgaXQgc2hvdWxkbid0IGlu
dHJvZHVjZSBhbnkgcmVncmVzc2lvbiBvbiBvdGhlciBTb0NzLAo+IGJ1dCBJIG1heSBiZSB3cm9u
Zy4KPgo+IFsgICAgMS4wOTI3MDVdIFBNOiB0ZXN0IFJUQyB3YWtldXAgZnJvbSAnZnJlZXplJyBz
dXNwZW5kCj4gWyAgICAxLjA5ODIzMF0gUE06IHN1c3BlbmQgZW50cnkgKHMyaWRsZSkKPiBbICAg
IDEuMjEyOTA3XSBQTTogc3VzcGVuZCBkZXZpY2VzIHRvb2sgMC4wODAgc2Vjb25kcwo+IChUaGUg
U29DIGZyZWV6ZXMgZm9yIHNvbWUgc2Vjb25kcykKPiBbICAgIDMuMTk3NjA0XSBQTTogcmVzdW1l
IGRldmljZXMgdG9vayAwLjEwNCBzZWNvbmRzCj4gWyAgICAzLjIxNTkzN10gUE06IHN1c3BlbmQg
ZXhpdAo+Cj4gWyAgICAxLjA5MjgxMl0gUE06IHRlc3QgUlRDIHdha2V1cCBmcm9tICdtZW0nIHN1
c3BlbmQKPiBbICAgIDEuMDk4MDg5XSBQTTogc3VzcGVuZCBlbnRyeSAoZGVlcCkKPiBbICAgIDEu
MTAyMDMzXSBQTTogc3VzcGVuZCBleGl0Cj4gWyAgICAxLjEwNTIwNV0gUE06IHN1c3BlbmQgdGVz
dCBmYWlsZWQsIGVycm9yIC0yMgo+Cj4gSW4gYW55IGNhc2UsIHRoZSBSVEMgYWxhcm0gaW50ZXJy
dXB0IGdldHMgZmlyZWQgYXMgZXhwdGVjdGVkOgo+Cj4gJCBlY2hvICs1ID4gL3N5cy9jbGFzcy9y
dGMvcnRjMC93YWtlYWxhcm0gJiYgc2xlZXAgNSAmJiBncmVwIHJ0YyAvcHJvYy9pbnRlcnJ1cHRz
Cj4gIDI5OiAgICAgICAgICAxICAgICAgICAgIDAgICAgICAgICAgMCAgICAgICAgICAwICAgICBH
SUN2MiAxMzMgTGV2ZWwgICAgIDcwMDAwMDAucnRjCj4KPiBTaWduZWQtb2ZmLWJ5OiBBbGVqYW5k
cm8gR29uesOhbGV6IDxhbGVqYW5kcm8uZ29uemFsZXouY29ycmVvQGdtYWlsLmNvbT4KClRoaXMg
c2VlbXMgbGlrZSBzdGFuZGFyZCBQTSBzdHVmZi4gTm90aGluZyBzdW54aS1zcGVjaWZpYy4KRldJ
VywgZm9yIHN1bnhpLAoKQWNrZWQtYnk6IENoZW4tWXUgVHNhaSA8d2Vuc0Bjc2llLm9yZz4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
