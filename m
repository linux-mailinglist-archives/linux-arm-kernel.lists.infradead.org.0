Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C580F1D3480
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 17:08:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tWV2CCB7njxiZvLX/G5LS3/XaDAuXpb+Ifi+lj49U4=; b=nyR8N0/dj7d9iC
	qjHn6JkKqF0wry50aUz4fc1U+Dc1zvm1wpI0Mr57SOQsUy853BLax7k8nkuTjYgseF61vmXbmxmDY
	jx+9OAsHzTB7GjkMVTodiDZPfqNZweT2K29sW8/CLhejFIb4sJpMKiTWIe6i2VuzDytICKW1m6vEO
	wNkP9cFr3BUMEThroiFY13U4hLZ1JURnoWppCZgzKN1jlTXNLQKznmED8ridDVt1ej8yBhUP+wfDK
	+D5mq8XVWnALpLZB+70Ip17v5Yde1kjMRzGQ/rQxkla6lzkek06X5Y8G9zbAdrq0kdPrArif+MzKH
	BHkuV3p9WQGN7TOKhFug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFT9-0004AK-83; Thu, 14 May 2020 15:08:19 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFSz-00049O-3r
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 15:08:10 +0000
Received: by mail-io1-xd41.google.com with SMTP id d7so1948504ioq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 08:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Gbex69XR4ZtBuJoqVeoYUx9nyFHm1kZR6S5jk554FrE=;
 b=FJPRMdQokqht7U+y1ela4OESMPvwo+hnpZbq+e01yT4sc7YmX6KhRapTLoooJGnaer
 no8q5/+yTTtmbVYURRxBEfQhhZ9J+LhKOFz0bqgGBx4PJ2Bw2ftahjLfUzXNEEvP8ccI
 2pAP6Y2aYPKnolxMJQZEZL2TjJA9jwPSwcgeBX6VoDfVfbkeZdHE4f3iGkIRzsuBERI3
 b0XGSa3ns7gvk1VcwnfVu1eKrphDamt+YQi9Z3l0nVtOAJFrtU66CW6UaoIx+NrhyDWG
 bpqevwejD/G29RpG/FpMT46mNvKB9gZs0esEtTpKHnxOjUpQp/TrM51cnY7zblKAAa2T
 Tr+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Gbex69XR4ZtBuJoqVeoYUx9nyFHm1kZR6S5jk554FrE=;
 b=RXXOY9NilpdEJL5EH9KctPCs4awpvoydCgnNIME67Qx0ZiJko6h5L0Wg2EOA5SOWFc
 hwgSMwErkff0VprNQaSTvu30dUMezJNow4IWfJ6TiEJtODPU92XS3TOFmjp0rXMd3F/w
 ouA2fPJQ3eH8ScOcv+Q7AZn5ijp2I+bUa9Ju3WNonQpeT486kA9iuo0OG92aew+86YbM
 Bp4Lv78F2Y5T+pSyCBmdXoQYz7CdV7CEqqudCsotplQtbKJpx553X6NSrW/hhF5xUDrb
 Vzv6pg4PJBioMeYr16PgHWsXqSpsVBMCTv7aVLdpQP4kQGrGIevduOxoAX1v8++DH8S3
 l1HA==
X-Gm-Message-State: AOAM5327kA2IkeEnwwkqrWt87j1u4/Uq8PJ2EaOaaKeAC7PdgS6XB+jM
 WnOa+m8KoRF4gmeNPOBoD5/RUNMgZiwWh3c2vfE=
X-Google-Smtp-Source: ABdhPJxG7GXTkoxbTPKumJL1X0BkUdzHfDr7LxNY1mkd2t1RPi+rTYGSq8vStSCW40203NqyVRJ+wEEs4doBgLVXPhg=
X-Received: by 2002:a5d:8b8e:: with SMTP id p14mr4506860iol.110.1589468887821; 
 Thu, 14 May 2020 08:08:07 -0700 (PDT)
MIME-Version: 1.0
References: <1589269010-18472-1-git-send-email-dillon.minfei@gmail.com>
 <1589269010-18472-3-git-send-email-dillon.minfei@gmail.com>
 <da9fbb80-571d-1217-4028-e413a0c7db84@st.com>
In-Reply-To: <da9fbb80-571d-1217-4028-e413a0c7db84@st.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Thu, 14 May 2020 15:07:32 +0800
Message-ID: <CAL9mu0KJ0j6Rxf7YjKxVWKz_d+B6vrwqqxJM-fmzG=NonLeDYQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] ARM: dts: stm32: enable l3gd20 on stm32429-disco
 board
To: Alexandre Torgue <alexandre.torgue@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_080809_153287_032B528A 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Hua Dillon <dillonhua@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, p.zabel@pengutronix.de,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQWxleGFuZHJlLAoKQWxleGFuZHJlIFRvcmd1ZSA8YWxleGFuZHJlLnRvcmd1ZUBzdC5jb20+
IOS6jjIwMjDlubQ15pyIMTTml6Xlkajlm5sg5LiL5Y2IMTA6MTDlhpnpgZPvvJoKPgo+IEhpIERp
bGxvbgo+Cj4gT24gNS8xMi8yMCA5OjM2IEFNLCBkaWxsb24ubWluZmVpQGdtYWlsLmNvbSB3cm90
ZToKPiA+IEZyb206IGRpbGxvbiBtaW4gPGRpbGxvbi5taW5mZWlAZ21haWwuY29tPgo+ID4KPiA+
IEwzZ2QyMCwgc3QgbWVtcyBtb3Rpb24gc2Vuc29yLCAzLWF4aXMgZGlnaXRhbCBvdXRwdXQgZ3ly
b3Njb3BlLAo+ID4gY29ubmVjdCB0byBzdG0zMmY0MjkgdmlhIHNwaTUKPiA+Cj4gPiBTaWduZWQt
b2ZmLWJ5OiBkaWxsb24gbWluIDxkaWxsb24ubWluZmVpQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4K
PiA+IEhpIEFsZXhhbmRyZSwKPiA+Cj4gPiBWMjoKPiA+ICAgICAgMSwgaW5zZXJ0IGJsYW5rIGxp
bmUgYXQgc3RtMzJmNDIwLWRpc2NvLmR0cyBsaW5lIDE0Mwo+ID4gICAgICAyLCBhZGQgbW9yZSBk
ZXNjcmlwdGlvbiBhYm91dCBsM2dkMjAgaW4gY29tbWl0IG1lc3NhZ2UKPiA+Cj4gPiBWMToKPiA+
ICAgICAgZW5hYmxlIGwzZ2QyMCBkdHMgYmluZGluZyBvbiBzdG0zMmY0MjktZGlzY28KPiA+Cj4g
PiB0aGFua3MuCj4gPgo+ID4gZGlsbG9uLAo+ID4KPiA+ICAgYXJjaC9hcm0vYm9vdC9kdHMvc3Rt
MzJmNDI5LWRpc2NvLmR0cyB8IDI1ICsrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ICAgMSBm
aWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0vYm9vdC9kdHMvc3RtMzJmNDI5LWRpc2NvLmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMy
ZjQyOS1kaXNjby5kdHMKPiA+IGluZGV4IDMwYzBmNjcuLjFiZmI5MDMgMTAwNjQ0Cj4gPiAtLS0g
YS9hcmNoL2FybS9ib290L2R0cy9zdG0zMmY0MjktZGlzY28uZHRzCj4gPiArKysgYi9hcmNoL2Fy
bS9ib290L2R0cy9zdG0zMmY0MjktZGlzY28uZHRzCj4gPiBAQCAtNDksNiArNDksOCBAQAo+ID4g
ICAjaW5jbHVkZSAic3RtMzJmNDI5LmR0c2kiCj4gPiAgICNpbmNsdWRlICJzdG0zMmY0MjktcGlu
Y3RybC5kdHNpIgo+ID4gICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW5wdXQvaW5wdXQuaD4KPiA+
ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvaXJxLmg+Cj4gPiAr
I2luY2x1ZGUgPGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPgo+ID4KPiA+ICAgLyB7Cj4gPiAgICAg
ICBtb2RlbCA9ICJTVE1pY3JvZWxlY3Ryb25pY3MgU1RNMzJGNDI5aS1ESVNDTyBib2FyZCI7Cj4g
PiBAQCAtMTI3LDMgKzEyOSwyNiBAQAo+ID4gICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0
IjsKPiA+ICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+ICAgfTsKPiA+ICsKPiA+ICsmc3BpNSB7
Cj4gPiArICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiArICAgICBwaW5jdHJsLTAgPSA8JnNwaTVf
cGlucz47Cj4gPiArICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4gKyAgICAgI2Fk
ZHJlc3MtY2VsbHMgPSA8MT47Cj4gPiArICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKPiA+ICsgICAg
IGNzLWdwaW9zID0gPCZncGlvYyAxIEdQSU9fQUNUSVZFX0xPVz47Cj4gPiArICAgICBkbWFzID0g
PCZkbWEyIDMgMiAweDQwMCAweDA+LAo+ID4gKyAgICAgICAgICAgIDwmZG1hMiA0IDIgMHg0MDAg
MHgwPjsKPiA+ICsgICAgIGRtYS1uYW1lcyA9ICJyeCIsICJ0eCI7Cj4gPiArCj4KPiBZb3UgYWRk
ZWQgdGhpcyBzcGk1IG5vZGUgaW4gdGhpcyBwYXRjaCBidXQgYWxzbyBpbiB0aGUgZGlzcGxheSBz
ZXJpZXMuIEkKPiB3aWxsIGhhdmUgaXNzdWUgdG8gbWVyZ2UuIEV2ZW4gaWYgSSBjb3VsZCBmaXgg
aXQgZWFzaWx5LCBhcyB5b3UgYXJlCj4gZ29pbmcgdG8gcmVzZW5kLCB0aGUgZ29vZCBwcmFjdGlj
ZSBjb3VsZCBiZSB0byBoYXZlIHNldmVyYWwgcGF0Y2hlcyBpbgo+IG9uZSBzZXJpZXM6IG9uZSBw
YXRjaCBmb3Igc3BpNSBjb250cm9sbGVyLCBhbm90aGVyIGZvciBneXJvIGFuZCBhbm90aGVyCj4g
Zm9yIGRpc3BsYXkuCj4KPiBBbmQgYWxzbyBzYW1lIHJlbWFyayB0aGFuIExpbnVzIGRpZCBpbiBk
aXNwbGF5IHNlcmllcyBtb3ZlIERNQSB0byBzb2MKPiBkdHNpIGZpbGUgcGxlYXNlLgoKU3VyZSwg
aG93IGFib3V0IHRoaXMgcGF0Y2ggc2VxdWVuY2U6CjEgYWRkIHNwaTUgZG1hIHRvIHNvYyAoc3Rt
MzJmNDI5LmR0c2kpCjIgYWRkIHBpbiBtYXAgZm9yIHNwaTUgKHN0bTMyZjQtcGluY3RybC5kdHNp
KQozIGFkZCBzcGk1IGNvbnRyb2xsZXIgd2l0aCBneXJvIChzdG0zMmY0MjktZGlzY28uZHRzKQo0
IGFkZCBzcGkgbW9kaWZpY2F0aW9uIHRvIHN1cHBvcnQgZ3lybyAoc3BpLXN0bTMyLmMpCgo1IGFk
ZCBsdGRjIHBpbiBtYXAgZm9yIHN0bTMyZjQyOS1kaXNjbyBib2FyZCAoc3RtMzJmNC1waW5jdHJs
LmR0c2kpCjYgYWRkIGlsaXRlay1pbGk5MzQxIGR0cyBiaW5kaW5ncyBmb3IgZGlzY28gKHN0bTMy
ZjQyOS1kaXNjby5kdHMsCmRlcGVuZHMgb24gYWJvdmUgc3RlcCAzKQo3IGFkZCB5YW1sIGRvY3Vt
ZW50IGFib3V0IGlsaXRlay1pbGk5MzQxIChpbGl0ZWssaWxpOTM0MS55YW1sKQo4IGFkZCBjbGsg
Y2hhbmdlcyB0byBzdXBwb3J0IGx0ZGMgZHJpdmVyIChjbGstc3RtMzJmNC5jKQoKc28sIGkgd2ls
bCBjb21iaW5lIGd5cm8gYW5kIGRpc3BsYXkgdHdvIHBhdGNoZXMgdG8gb25lIHBhdGNoc2V0IG5l
eHQKdGltZS4gcmlnaHQgPwoKdGhhbmtzLgo+Cj4KPiA+ICsgICAgIGwzZ2QyMDogbDNnZDIwQDAg
ewo+ID4gKyAgICAgICAgICAgICBjb21wYXRpYmxlID0gInN0LGwzZ2QyMC1neXJvIjsKPiA+ICsg
ICAgICAgICAgICAgc3BpLW1heC1mcmVxdWVuY3kgPSA8MTAwMDAwMDA+Owo+ID4gKyAgICAgICAg
ICAgICBzdCxkcmR5LWludC1waW4gPSA8Mj47Cj4gPiArICAgICAgICAgICAgIGludGVycnVwdC1w
YXJlbnQgPSA8JmdwaW9hPjsKPiA+ICsgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDwxIElSUV9U
WVBFX0VER0VfUklTSU5HPiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwyIElS
UV9UWVBFX0VER0VfUklTSU5HPjsKPiA+ICsgICAgICAgICAgICAgcmVnID0gPDA+Owo+ID4gKyAg
ICAgICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiArICAgICB9Owo+ID4gK307Cj4gPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
