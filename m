Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0005D1FC41D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 04:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QDL7HJ+/T4LZe4JOn/G64Vt+sfUxUQLTZKBwNNMyE8=; b=Cf+MBWTbNVfN8b
	IPLY+0Hpb5kp5r+slviTE69sY/HYyOeU0UoBVrmTqrme0wuqn8520n7sgDepf2mY7zvpXxjgT9WW7
	XLMNryhOLHXA/QccATrS0jzYWvLHylIATDdE7ArnpiQuxyipUyHa9oPpunT+pDy8wqrQeJc9l5shZ
	rfpc8p0MK4ftv0hJJrWGxJGW+Fi0/vcptp0QvssABvIKAjC1Nn95AF+jAJvKSGLmlB9ddDutHEp66
	xvMpUMcifBepypflKfkQX9XuhxRt3eBk5q1bHm/IIUvQNhpCIyaH/IrZ1+G+Mkz8ZmqxNNLzRPZdA
	b8QlilFe5cNXzrsOxFHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlNnk-0005yQ-Uf; Wed, 17 Jun 2020 02:27:44 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlNnd-0005xn-TV; Wed, 17 Jun 2020 02:27:39 +0000
Received: by mail-io1-xd44.google.com with SMTP id u13so956260iol.10;
 Tue, 16 Jun 2020 19:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=o+3+WHHJ8/T1Wxlro6VgUKACrLkQwhYAFXZ7kke0D9k=;
 b=LTHdDJnDrNomSfUbM5PjQjTr9FrUwPmPariJdqPW2HFl+1wAomframy4GqUiajueTS
 pmGBDsY6llA9/qL5AJSW/Oy5nPqNrBVt5BGlIll+tDOyI57H37kt921kx8hnm6on9OiQ
 dOuVNJDsBkLtNxm0msEyp1Xn9SWJcmWGajWSaH6o1lYcpg83sr5bAusUKkSjUSR52SZE
 PTSiXswF+GgMxxoRpHwaVda7kUC4HK0LS1aPxIZSvjhm902Av6i/EQXv5uX6O2B0F3Mf
 EjzMIaXSnzEdd9171v8M+rpFKnohT4loOpaqu3rpgohdZINXfQWPp7QGgb/Z13dD6ZEr
 Hrzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=o+3+WHHJ8/T1Wxlro6VgUKACrLkQwhYAFXZ7kke0D9k=;
 b=DMI4MsUbiMNStYoCbL0xT1w/djuon6RkUg4FZUkdcTEA/HHkDPjVlVgoS+mHlU+oXD
 fJDyD5nbG0iY5vKd6zmTYMGpHF5DzeOHrIN3rMwlRAt6VS9oDVucKlpAb9dw3GCEewp8
 P//Qx/AmXzB88LIUlkneplnZg0hzRfKgTg3JgGSXsPYJLREjDngV6f5TsGNC5jt3SaMz
 v4lqvo3M+eycbVOmou1zYg9IErWCWsl27iPtTL9+PNvtjaDjKP0DYal+eEcjDam2T/jU
 sZM7LYW2srm0FKCLKJXTnaOf3m5Isc+Owplrr3wYug6IzWvn92p/FArDc43ifDYBhiX7
 k8lw==
X-Gm-Message-State: AOAM531BBuLcR0aTb03UukiSfp9T+rhcqOVgqlK+uUWn72wW1lBQQmd3
 wCz8zIudCnoyKNdQafPbawPCedVAdJflg7MU9Svfn1CQ
X-Google-Smtp-Source: ABdhPJzW2JLOEdfm5n2+1udufWR25HquV0/vCG85pUOkXhf8DeOdEIXFVfOOsjnFIDwFMHJUrRvnDUaBoy0wBiQVTY0=
X-Received: by 2002:a05:6602:2e96:: with SMTP id
 m22mr5919832iow.165.1592360854942; 
 Tue, 16 Jun 2020 19:27:34 -0700 (PDT)
MIME-Version: 1.0
References: <1592310884-4307-1-git-send-email-macpaul.lin@mediatek.com>
 <20200616140246.GA30975@rowland.harvard.edu>
In-Reply-To: <20200616140246.GA30975@rowland.harvard.edu>
From: Macpaul Lin <macpaul@gmail.com>
Date: Wed, 17 Jun 2020 10:27:23 +0800
Message-ID: <CACCg+XNdnzsn4RH+1OWJXNY6mVA9a6tpaUec3=P53WkywcWfkA@mail.gmail.com>
Subject: Re: [PATCH 1/2] usb: gadget: introduce flag for large request
To: Alan Stern <stern@rowland.harvard.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_192737_968962_63C7B7B9 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [macpaul[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sergey Organov <sorganov@gmail.com>,
 Macpaul Lin <macpaul.lin@mediatek.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-mediatek@lists.infradead.org,
 Macpaul Lin <macpaul.lin@gmail.com>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxhbiBTdGVybiA8c3Rlcm5Acm93bGFuZC5oYXJ2YXJkLmVkdT4g5pa8IDIwMjDlubQ25pyIMTbm
l6Ug6YCx5LqMIOS4i+WNiDEwOjA15a+r6YGT77yaCj4KPiBPbiBUdWUsIEp1biAxNiwgMjAyMCBh
dCAwODozNDo0M1BNICswODAwLCBNYWNwYXVsIExpbiB3cm90ZToKPiA+IFNvbWUgVVNCIGhhcmR3
YXJlIGxpa2UgRE1BIGVuZ2luZSBjYW4gaGVscCB0byBwcm9jZXNzIChzcGxpdCkgdGhlIGRhdGEK
PiA+IG9mIGVhY2ggVVJCIHJlcXVlc3QgaW50byBzbWFsbCBwYWNrZXRzLiBGb3IgZXhhbXBsZSwg
dGhlIG1heCBwYWNrZXQgc2l6ZQo+ID4gb2YgaGlnaCBzcGVlZCBpcyA1MTIgYnl0ZXMuIFRoZXNl
IGtpbmRzIG9mIGhhcmR3YXJlIGNhbiBoZWxwIHRvIHNwbGl0Cj4gPiB0aGUgY29udGludWUgVHgv
UnggZGF0YSByZXF1ZXN0cyBpbnRvIHBhY2tldHMganVzdCBhdCB0aGUgbWF4IHBhY2tldAo+ID4g
c2l6ZSBkdXJpbmcgdHJhbnNtaXNzaW9uLiBIZW5jZSB1cHBlciBsYXllciBzb2Z0d2FyZSBjYW4g
cmVkdWNlIHNvbWUKPiA+IGVmZm9ydCBmb3IgcXVldWVpbmcgbWFueSByZXF1ZXN0cyBiYWNrIGFu
ZCBmb3J0aCBmb3IgbGFyZ2VyIGRhdGEuCj4gPgo+ID4gSGVyZSB3ZSBpbnRyb2R1Y2UgImNhbl9l
eGNlZWRfbWF4cCIgZmxhZyBpbiBnYWRnZXQgd2hlbiB0aGVzZSBraW5kcyBvZgo+ID4gaGFyZHdh
cmUgaXMgcmVhZHkgdG8gc3VwcG9ydCB0aGVzZSBvcGVyYXRpb25zLgo+Cj4gVGhpcyBpc24ndCBu
ZWVkZWQuICBBbGwgVURDIGRyaXZlcnMgbXVzdCBiZSBhYmxlIHRvIHN1cHBvcnQgcmVxdWVzdHMg
dGhhdAo+IGFyZSBsYXJnZXIgdGhhbiB0aGUgbWF4cGFja2V0IHNpemUuCj4KPiBBbGFuIFN0ZXJu
CgpUaGFua3MgZm9yIHlvdXIgcmVwbHksIGNvdWxkIHdlIGp1c3QgbW9kaWZ5IHRoZSBwYXRjaCAy
ICh1X3NlcmlhbC5jKQpmb3IgaW1wcm92aW5nCmJldHRlciBwZXJmb3JtYW5jZT8gSSdtIG5vdCBz
dXJlIHdoeSB0aGVyZSB3YXMgYSByZXN0cmljdGlvbiBhYm91dCBtYXggcGFja2V0LgpJc24ndCB0
aGVyZSBhbnkgaGlzdG9yaWNhbCByZWFzb24/CgotLSAKQmVzdCByZWdhcmRzLApNYWNwYXVsIExp
bgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
