Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD4B2AB84
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 20:02:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbJ41WaoW3iCy1Yfvst6JpYGGMAvZVTJ8tv7Tw3sNn8=; b=Y+2j3+Qi59yQij
	XDeKM8pp6bRLa8uC8rCtYv645c57tSWz4wzHzUR1snAEUy5WEEPNXfxJpCa7sSM5MLfYqEix8CY1X
	kVfXghr9yfLpXQ7P8hi3rHbravO63DmUKrvAJrgHop8xQetn5YOtigYf5CLGFrmHqAr6FfMprSdjS
	5nLvEcf6gPUbxY4baCUisG2Vk3hIjLC3kQZ9B2lgH6jbf+jilksMdXmiqTLy4fby5PWQZFHHgR/dZ
	yJfbBGstY3rd1gCaUjoLY+OAsyBMXVtuqpgmKqKqerVWc28nuGSxn4HJvHm8SfaabCvg5d44nXgpk
	/oMfd0xCx2+iDg/5quHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUxTo-0004fh-KN; Sun, 26 May 2019 18:02:44 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUxTh-0004f9-1U
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 18:02:38 +0000
Received: by mail-it1-x143.google.com with SMTP id g23so15442644iti.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 11:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=w9ucTgTenNw/76da0Hs8BAQoNmqkFrLKFM96xtUMtlE=;
 b=AKgxoqFCZzjngjXOkpRndLvEmicBBu+xGNIRVdjCKtdd/aU1a3hkWH0IoDa+Xvk+vq
 R91+vFdKaErBA42JES3nYPN74PZwzpEMxpgWsrPw78BeRPmF3uUZ9isHLQb1QapQEzqD
 AZNRuIhz9EikBAm+LhMX/y42h/Bq6GuKwjMYX7YXQd2wX5hVPKMXr1Hs9+3xC8aopVVt
 xU5+7wkejsB0W0otZpv5y0UqerW8JEGHWywjz5HzLRFB6J9zZOcYs2+aH0mqKqKNXlKw
 bIVwFjP5ALk/iD9bzS0QsJF2A1AHS4iWQz/MpP8vUtkDlMKLTB36HskUrQ8tuU5hIC07
 Q8KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=w9ucTgTenNw/76da0Hs8BAQoNmqkFrLKFM96xtUMtlE=;
 b=RgWv7OxlgSMjTctXDcyDaqbB1CzLahIFXmPEMdTS7YVKL+cc7FVS3Pye+08PJUQVhN
 OUQBXEYgP7FaRMReMbBObyljiA/N7RzIObTQunrkoRxoFC9ew5b0IcrwJIuj3OBY9auv
 G3QXi7F+LDp9zBQESgju3Yotm7H6jzm7yt4DKxPb9nfs/DaVBUdqkA5XheUXvTLDuIVA
 kp9b99jS6WVtQXAptYUNzN4i6DH37n5IOdCSD1DsUM9PuYiH2FFePTocGy+5QjUkgqpt
 ff7EhwjE9osxxVAxw3Ah4o1oAxB/X4IqRJOal25AKzxGzMSGbmMH09fbNZToGyVE5+o9
 w6ig==
X-Gm-Message-State: APjAAAUvhBXUHOEQy10KXLqHf5RWIOtBkMSfBsz4UidDImYmnAcLvgbb
 sVklLpgd0/LdLL0lByL7bDn72keY/hJ4tcxKcNoaeg==
X-Google-Smtp-Source: APXvYqx2qBD9cRwhPDlsjouVK6mr5mk3j0GDY6Ebq306CUb2YYZOGAX929/s4RJJem5bQtqlvpOzjtHIflontUAKo+w=
X-Received: by 2002:a24:910b:: with SMTP id i11mr27912268ite.76.1558893755513; 
 Sun, 26 May 2019 11:02:35 -0700 (PDT)
MIME-Version: 1.0
References: <0ae6261e-96b3-cf8b-d523-a6b8851c951b@gmx.net>
 <CAKv9HNaJg3OB3DrC_aJe0M97dFP9A0_Jew_wFqReHvzDoFF+sg@mail.gmail.com>
 <CAKv+Gu8fHfmMk63jzvtUGpHb=Nf1bzUvXay8_Hi4YTz=96pQNg@mail.gmail.com>
In-Reply-To: <CAKv+Gu8fHfmMk63jzvtUGpHb=Nf1bzUvXay8_Hi4YTz=96pQNg@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Sun, 26 May 2019 20:02:23 +0200
Message-ID: <CAKv+Gu_OWrLuQGSinANa27Km4XiJg1MU6oUf=vZ77EXQoC8bZw@mail.gmail.com>
Subject: Re: usb: dwc2: RODATA_FULL_DEFAULT_ENABLED causes kernel oops
To: =?UTF-8?B?QW50dGkgU2VwcMOkbMOk?= <a.seppala@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_110237_221472_C922F6E0 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb <linux-usb@vger.kernel.org>, Will Deacon <will.deacon@arm.com>,
 Stefan Wahren <wahrenst@gmx.net>, Minas Harutyunyan <hminas@synopsys.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAyNiBNYXkgMjAxOSBhdCAxNDo1OCwgQXJkIEJpZXNoZXV2ZWwgPGFyZC5iaWVzaGV1
dmVsQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gU3VuLCAyNiBNYXkgMjAxOSBhdCAxMjo0NSwg
QW50dGkgU2VwcMOkbMOkIDxhLnNlcHBhbGFAZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBPbiBT
dW4sIDI2IE1heSAyMDE5IGF0IDEzOjExLCBTdGVmYW4gV2FocmVuIDx3YWhyZW5zdEBnbXgubmV0
PiB3cm90ZToKPiA+ID4KPiA+ID4gSGksCj4gPiA+Cj4gPiA+IGkgd2FudCB0byByZW1pbmQgYWJv
dXQgYW4gaXNzdWUgd2hpY2ggd2FzIG9yaWdpbmFsbHkgcmVwb3J0ZWQgYnkgV2F5bmUKPiA+ID4g
UGlla2Fyc2tpIFsxXS4gSSdtIGFibGUgdG8gcmVwcm9kdWNlIHRoaXMgb29wcyB3aXRoIE1haW5s
aW5lIExpbnV4IDUuMC4yCj4gPiA+IG9uIGEgUmFzcGJlcnJ5IFBpIDNCKyAoYXJtNjQvZGVmY29u
ZmlnKSBhbmQgYWNjb3JkaW5nIHRvIEphbiBLcmF0b2NodmlsCj4gPiA+IFsyXSB0aGlzIGFwcGxp
ZXMgdG8gNS4xLjAgYW5kIDUuMi4wLgo+ID4gPgo+ID4gPiBUaGUgY3Jhc2ggaXMgcmVwcm9kdWNp
YmxlIHNpbmNlIGNvbW1pdCBjNTUxOTFlOTZjYSAoImFybTY0OiBtbTogYXBwbHkKPiA+ID4gci9v
IHBlcm1pc3Npb25zIG9mIFZNIGFyZWFzIHRvIGl0cyBsaW5lYXIgYWxpYXMgYXMgd2VsbCIpLCBi
dXQgdGhlIHJvb3QKPiA+ID4gY2F1c2Ugb2YgdGhlIGNyYXNoIHdhcyBpbnRyb2R1Y2VkIG11Y2gg
ZWFybGllciB3aXRoIGNvbW1pdCA1NjQwNmUwMTdhODgKPiA+ID4gKCJ1c2I6IGR3YzI6IEZpeCBE
TUEgYWxpZ25tZW50IHRvIHN0YXJ0IGF0IGFsbG9jYXRlZCBib3VuZGFyeSIpLgo+ID4gPgo+ID4g
PiBJIHRlc3RlZCBzdWNjZXNzZnVsbHkgdGhlIGZvbGxvd2luZyB3b3JrYXJvdW5kcyB3aXRoIHRo
ZSBSUGkgM0IrOgo+ID4gPgo+ID4gPiAxKSBEaXNhYmxlIFJPREFUQV9GVUxMX0RFRkFVTFRfRU5B
QkxFRAo+ID4gPgo+ID4gPiAyKSByZXZlcnQgY29tbWl0IDU2NDA2ZTAxN2E4OCAoInVzYjogZHdj
MjogRml4IERNQSBhbGlnbm1lbnQgdG8gc3RhcnQgYXQKPiA+ID4gYWxsb2NhdGVkIGJvdW5kYXJ5
IikKPiA+ID4KPiA+ID4gSXQgd291bGQgYmUgbmljZSBpZiBzb21lb25lIGNhbiBjb21lIHVwIHdp
dGggYSBwcm9wZXIgc29sdXRpb24uCj4gPiA+Cj4gPiA+IFJlZ2FyZHMKPiA+ID4gU3RlZmFuCj4g
PiA+Cj4gPiA+IFsxXSAtIGh0dHBzOi8vbWFyYy5pbmZvLz9sPWxpbnV4LXVzYiZtPTE1NTQ0MDI0
MzcwMjY1MCZ3PTIKPiA+ID4gWzJdIC0gaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3df
YnVnLmNnaT9pZD0yMDMxNDkKPiA+ID4KPiA+Cj4gPiBIZWxsby4KPiA+Cj4gPiBUaGlzIGlzIGp1
c3QgYSBzaG90IGluIHRoZSBkYXJrIGJ1dCBoYXZlIHlvdSB0cmllZCB0byBhcHBseSBETUEgY2Fj
aGUKPiA+IGFsaWdubWVudCBpc3N1ZSBmaXggWzFdIGFzIGEgdGhpcmQgd29ya2Fyb3VuZCBhbHRl
cm5hdGl2ZT8KPiA+IElmIGl0IGhlbHBzIHRoZSBmaXggc2hvdWxkIGJlIG1lcmdlZCB1cHN0cmVh
bS4KPiA+Cj4KCkFwb2xvZ2llcywgSSBzaG91bGQgaGF2ZSBsb29rZWQgYXQgdGhlIHBhdGNoIGZp
cnN0IDotKQoKSXQgZG9lcyBleGFjdGx5IHdoYXQgSSBwcm9wb3NlZCAtIGVuc3VyZSB0aGF0IERN
QSByZWxhdGVkIGNhY2hlCmludmFsaWRhdGlvbiBkb2VzIG5vdCB3aXBlIHRoZSBzdG9yZWRfeGZl
cl9idWZmZXIgcG9pbnRlci4KCnNvcnJ5IGZvciB0aGUgbm9pc2UKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
