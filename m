Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45510DDAEE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 22:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HUZ+6rgRnXcccwdMNM0miGpO/VTJErW5RXlltA4GpbI=; b=OdXrD76JU5tx680DWRoYEBQYt
	kLBdBkmgMcmEx8YQAjpUIYayKpPODGURkgUCMXP5/1VtJm7TjFusVfAuYEwqN3jUhUIXXAJ65EfUj
	mLjt19d1WmzIq6UN3+7D2aridtU+WTPsN4B03gzEIUZJbMyBWIBun69iHocM5biLmkTf3tNshEW+g
	F4NuEhfY6B5xzsvByesL88AqHfCRHEgHYtqOY1LQ6q7r1eHhcK1gjDnpZ3rnfYzVs+Pbup7HFqIyh
	Y+K+PPWBn35RfICy+WRBRBn1eXwkkBXefNEYNIn+IAE37DZ1Nd3Us44qAn/77lPyp3rN7X0MHnsRN
	GAOjyu08g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLvah-0001pC-KZ; Sat, 19 Oct 2019 20:44:47 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLvaY-0001oo-Tv
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 20:44:40 +0000
Received: from mail-qt1-f174.google.com ([209.85.160.174]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MqK2d-1hhakR2GZ9-00nOLv for <linux-arm-kernel@lists.infradead.org>; Sat,
 19 Oct 2019 22:44:36 +0200
Received: by mail-qt1-f174.google.com with SMTP id t20so14431377qtr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 19 Oct 2019 13:44:36 -0700 (PDT)
X-Gm-Message-State: APjAAAXahcSD57s4v8BkpiM7Gs0Iv40MfDZ5VRl/tOK49hzKSlDlpYXq
 HflWVzPmfSdNYampEn9qh61evXbNHmdgXBITHdI=
X-Google-Smtp-Source: APXvYqwTYjWwH/dr7P8eVD9tFv812uR9utN1gTO3QpV//KWihS4RAiftduUE3FA547xXMIiNQEepk1FXzT5z9CnmhCc=
X-Received: by 2002:ac8:729a:: with SMTP id v26mr16655827qto.18.1571517875474; 
 Sat, 19 Oct 2019 13:44:35 -0700 (PDT)
MIME-Version: 1.0
References: <20191018163047.1284736-1-arnd@arndb.de>
 <20191018163047.1284736-2-arnd@arndb.de>
 <20191019184234.4cdb37a735fe632528880d76@gmail.com>
 <CAK8P3a0LWeGJshr=AdeE3QXHYe2jVmc90K_2prc=4=ZFk0hr=g@mail.gmail.com>
 <20191019222413.52f7b79369d085c4ce29bc23@gmail.com>
In-Reply-To: <20191019222413.52f7b79369d085c4ce29bc23@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 19 Oct 2019 22:44:18 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3UztT5aqDTiBNDssHWcdYQNqbhiY_hxJ+AHuM54hgCWQ@mail.gmail.com>
Message-ID: <CAK8P3a3UztT5aqDTiBNDssHWcdYQNqbhiY_hxJ+AHuM54hgCWQ@mail.gmail.com>
Subject: Re: [PATCH 2/6] ARM: ep93xx: enable SPARSE_IRQ
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Content-Type: multipart/mixed; boundary="000000000000ba2049059549847a"
X-Provags-ID: V03:K1:biabEfaFk2g7HnhVqhM0tKt2/QFE5Ej7IKdNu43MMrNJ5NFPO/D
 b8dFmQo5D8NsOEeap7d4ORrQNHBGb7V3jQsx6D1ORchTgNRhavnVFPsXw4FD0G35CyxcL7B
 TjrAC9AcSSQ+LDBb8ytr5mNQjbW1gJmaHsS9lALuWFMMX7EiLsnDKP+YhECnr9UflDy50JZ
 JYSYaTQfxtkWDdUbrWpRQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:P7PMLp1XAyc=:Ocxl/EPZPsc0KUg4ty3LZZ
 im9Yter506jzDPFSf2sqSCxfaIRd+zt64zJhO4nK+XDuT9h/H+6bsbuT7ZRjNmetfA+rBrW3I
 qFYEQYkTtWfwcWFK5Zuvu+zfOW/yjj3jTWAmlz5MofcdzbFsK+BBXfHV/SVZbiVZ8gRQI0Hbt
 rJt4VoMHFb/1yzI7mlbnX9ptRBpVF5Pd8xYyN245TvH/XXZdETAMMXt0BiwpuqpanxKghw+jy
 2RATF0AHbaVFqqXbNRbwGf6X5GhNIVQpjB5eNNZXwWAfZho8kDJe/DmjPOWuI8ZzvmniC9ad8
 iOcTi9Sp1/XkMdhpLo/ZCu1iP3Wqp4fMc2Ahy7owEc6gYJoOKg8nD3Csoq6F8WKbtpJ7IODMw
 AuFn9oQXC+SdbYPjbsVc5SFJ1jxEJ91daGQRMjsoZ5xvHTgDjEw6utEjjammL2kWq4wT2ARJU
 Ll2Pkje5EKjlNeA7ruN3l7X1p3HH772vBQnQXKKEEeddN5QCRz0TE4dKoEx3fSnjVWwM+L7+K
 R8oLCgwufECwRhqwQYzCrmcbEfVuNGbZewfB7CegUv19Pvg431xNV0D/tNCaBL1dRiJXejAbE
 Y96rB771Z8ALpBznRH0k1iNcKVsKSxQHqDqpgIjmw2+Pu2EnnJf+3Rv1IOdHgvhw2/AFdSsJk
 RuM9pUwoRJoihZpuzyQRKiu1X/CKfPt0ih1e8VvMibvrHWaH7XHiScZ6A54NCYR8rTIZ1SULu
 mA8Lcaq/DxBYs+5cBVVmddlI/hTz9KijQdRSLOyUCyqj3BHQ2fUQiDHNxRy75Uv0xz5goISAa
 SufDFoSkbpgY3+I45h/RuH+vWnMkSmAs5nXzPdBisqHJNoAPI9boMUDUb3Wr32On225POFkK2
 vfLyzBqUJdNPLdZrqpgA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_134439_257014_C1E25874 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Hubert Feurstein <hubert.feurstein@contec.at>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Lukasz Majewski <lukma@denx.de>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--000000000000ba2049059549847a
Content-Type: text/plain; charset="UTF-8"

On Sat, Oct 19, 2019 at 10:24 PM Alexander Sverdlin
<alexander.sverdlin@gmail.com> wrote:
> On Sat, 19 Oct 2019 22:08:40 +0200
> Arnd Bergmann <arnd@arndb.de> wrote:
>
> > > # cat /proc/interrupts
> > >            CPU0
> > >  39:        146       VIC   7 Edge      eth0
> > >  51:     162161       VIC  19 Edge      ep93xx timer
> > >  52:        139       VIC  20 Edge      uart-pl010
> > >  53:          4       VIC  21 Edge      ep93xx-spi
> > >  60:          0       VIC  28 Edge      ep93xx-i2s
> > > Err:          0
> >
> > I guess that is partial success: some irqs do work ;-)
>
> Yep, VIC1 is working, while VIC0 is not.
>
> > The two interrupts that did not get registered are for the
> > dmaengine driver, and that makes sense given the error
> > message about the DMA not working. No idea how
> > that would be a result of the irq changes though.
>
> Seems, that it has exposed some incompatibilities of
> starting IRQ 0 in EP93xx platform fir VIC0 and VIC code
> itself, which assumes 0 means "auto assignment" (refer
> to vic_init()).

Ah, that makes sense. so all interrupt numbers need to
be shifted by a fixed number (e.g. 1) like we did for
other platforms (see attachment).

      Arnd

--000000000000ba2049059549847a
Content-Type: text/x-patch; charset="US-ASCII"; name="ep93xx_vic.patch"
Content-Disposition: attachment; filename="ep93xx_vic.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k1y153yi0>
X-Attachment-Id: f_k1y153yi0

ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtZXA5M3h4L2NvcmUuYyBiL2FyY2gvYXJtL21hY2gt
ZXA5M3h4L2NvcmUuYwppbmRleCA2ZmIxOWEzOTNmZDIuLmYwYTcxZDRlMDc2ZiAxMDA2NDQKLS0t
IGEvYXJjaC9hcm0vbWFjaC1lcDkzeHgvY29yZS5jCisrKyBiL2FyY2gvYXJtL21hY2gtZXA5M3h4
L2NvcmUuYwpAQCAtNDcsNiArNDcsNyBAQAogI2luY2x1ZGUgPGFzbS9tYWNoL21hcC5oPgogCiAj
aW5jbHVkZSAic29jLmgiCisjaW5jbHVkZSAiaXJxcy5oIgogCiAvKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgog
ICogU3RhdGljIEkvTyBtYXBwaW5ncyB0aGF0IGFyZSBuZWVkZWQgZm9yIGFsbCBFUDkzeHggcGxh
dGZvcm1zCkBAIC03NSw4ICs3Niw4IEBAIHZvaWQgX19pbml0IGVwOTN4eF9tYXBfaW8odm9pZCkK
ICAqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqLwogdm9pZCBfX2luaXQgZXA5M3h4X2luaXRfaXJxKHZvaWQpCiB7
Ci0JdmljX2luaXQoRVA5M1hYX1ZJQzFfQkFTRSwgMCwgRVA5M1hYX1ZJQzFfVkFMSURfSVJRX01B
U0ssIDApOwotCXZpY19pbml0KEVQOTNYWF9WSUMyX0JBU0UsIDMyLCBFUDkzWFhfVklDMl9WQUxJ
RF9JUlFfTUFTSywgMCk7CisJdmljX2luaXQoRVA5M1hYX1ZJQzFfQkFTRSwgSVJRX0VQOTNYWF9W
SUMwLCBFUDkzWFhfVklDMV9WQUxJRF9JUlFfTUFTSywgMCk7CisJdmljX2luaXQoRVA5M1hYX1ZJ
QzJfQkFTRSwgSVJRX0VQOTNYWF9WSUMxLCBFUDkzWFhfVklDMl9WQUxJRF9JUlFfTUFTSywgMCk7
CiB9CiAKIApkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1lcDkzeHgvaXJxcy5oIGIvYXJjaC9h
cm0vbWFjaC1lcDkzeHgvaXJxcy5oCmluZGV4IDNmZmRiM2EyZjNlNC4uMzUzMjAxYjkwYzY2IDEw
MDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLWVwOTN4eC9pcnFzLmgKKysrIGIvYXJjaC9hcm0vbWFj
aC1lcDkzeHgvaXJxcy5oCkBAIC0yLDY5ICsyLDczIEBACiAjaWZuZGVmIF9fQVNNX0FSQ0hfSVJR
U19ICiAjZGVmaW5lIF9fQVNNX0FSQ0hfSVJRU19ICiAKLSNkZWZpbmUgSVJRX0VQOTNYWF9DT01N
UlgJCTIKLSNkZWZpbmUgSVJRX0VQOTNYWF9DT01NVFgJCTMKLSNkZWZpbmUgSVJRX0VQOTNYWF9U
SU1FUjEJCTQKLSNkZWZpbmUgSVJRX0VQOTNYWF9USU1FUjIJCTUKLSNkZWZpbmUgSVJRX0VQOTNY
WF9BQUNJTlRSCQk2Ci0jZGVmaW5lIElSUV9FUDkzWFhfRE1BTTJQMAkJNwotI2RlZmluZSBJUlFf
RVA5M1hYX0RNQU0yUDEJCTgKLSNkZWZpbmUgSVJRX0VQOTNYWF9ETUFNMlAyCQk5Ci0jZGVmaW5l
IElSUV9FUDkzWFhfRE1BTTJQMwkJMTAKLSNkZWZpbmUgSVJRX0VQOTNYWF9ETUFNMlA0CQkxMQot
I2RlZmluZSBJUlFfRVA5M1hYX0RNQU0yUDUJCTEyCi0jZGVmaW5lIElSUV9FUDkzWFhfRE1BTTJQ
NgkJMTMKLSNkZWZpbmUgSVJRX0VQOTNYWF9ETUFNMlA3CQkxNAotI2RlZmluZSBJUlFfRVA5M1hY
X0RNQU0yUDgJCTE1Ci0jZGVmaW5lIElSUV9FUDkzWFhfRE1BTTJQOQkJMTYKLSNkZWZpbmUgSVJR
X0VQOTNYWF9ETUFNMk0wCQkxNwotI2RlZmluZSBJUlFfRVA5M1hYX0RNQU0yTTEJCTE4Ci0jZGVm
aW5lIElSUV9FUDkzWFhfR1BJTzBNVVgJCTE5Ci0jZGVmaW5lIElSUV9FUDkzWFhfR1BJTzFNVVgJ
CTIwCi0jZGVmaW5lIElSUV9FUDkzWFhfR1BJTzJNVVgJCTIxCi0jZGVmaW5lIElSUV9FUDkzWFhf
R1BJTzNNVVgJCTIyCi0jZGVmaW5lIElSUV9FUDkzWFhfVUFSVDFSWAkJMjMKLSNkZWZpbmUgSVJR
X0VQOTNYWF9VQVJUMVRYCQkyNAotI2RlZmluZSBJUlFfRVA5M1hYX1VBUlQyUlgJCTI1Ci0jZGVm
aW5lIElSUV9FUDkzWFhfVUFSVDJUWAkJMjYKLSNkZWZpbmUgSVJRX0VQOTNYWF9VQVJUM1JYCQky
NwotI2RlZmluZSBJUlFfRVA5M1hYX1VBUlQzVFgJCTI4Ci0jZGVmaW5lIElSUV9FUDkzWFhfS0VZ
CQkJMjkKLSNkZWZpbmUgSVJRX0VQOTNYWF9UT1VDSAkJMzAKKyNkZWZpbmUgSVJRX0VQOTNYWF9W
SUMwCQkJMQorCisjZGVmaW5lIElSUV9FUDkzWFhfQ09NTVJYCQkoSVJRX0VQOTNYWF9WSUMwICsg
MikKKyNkZWZpbmUgSVJRX0VQOTNYWF9DT01NVFgJCShJUlFfRVA5M1hYX1ZJQzAgKyAzKQorI2Rl
ZmluZSBJUlFfRVA5M1hYX1RJTUVSMQkJKElSUV9FUDkzWFhfVklDMCArIDQpCisjZGVmaW5lIElS
UV9FUDkzWFhfVElNRVIyCQkoSVJRX0VQOTNYWF9WSUMwICsgNSkKKyNkZWZpbmUgSVJRX0VQOTNY
WF9BQUNJTlRSCQkoSVJRX0VQOTNYWF9WSUMwICsgNikKKyNkZWZpbmUgSVJRX0VQOTNYWF9ETUFN
MlAwCQkoSVJRX0VQOTNYWF9WSUMwICsgNykKKyNkZWZpbmUgSVJRX0VQOTNYWF9ETUFNMlAxCQko
SVJRX0VQOTNYWF9WSUMwICsgOCkKKyNkZWZpbmUgSVJRX0VQOTNYWF9ETUFNMlAyCQkoSVJRX0VQ
OTNYWF9WSUMwICsgOSkKKyNkZWZpbmUgSVJRX0VQOTNYWF9ETUFNMlAzCQkoSVJRX0VQOTNYWF9W
SUMwICsgMTApCisjZGVmaW5lIElSUV9FUDkzWFhfRE1BTTJQNAkJKElSUV9FUDkzWFhfVklDMCAr
IDExKQorI2RlZmluZSBJUlFfRVA5M1hYX0RNQU0yUDUJCShJUlFfRVA5M1hYX1ZJQzAgKyAxMikK
KyNkZWZpbmUgSVJRX0VQOTNYWF9ETUFNMlA2CQkoSVJRX0VQOTNYWF9WSUMwICsgMTMpCisjZGVm
aW5lIElSUV9FUDkzWFhfRE1BTTJQNwkJKElSUV9FUDkzWFhfVklDMCArIDE0KQorI2RlZmluZSBJ
UlFfRVA5M1hYX0RNQU0yUDgJCShJUlFfRVA5M1hYX1ZJQzAgKyAxNSkKKyNkZWZpbmUgSVJRX0VQ
OTNYWF9ETUFNMlA5CQkoSVJRX0VQOTNYWF9WSUMwICsgMTYpCisjZGVmaW5lIElSUV9FUDkzWFhf
RE1BTTJNMAkJKElSUV9FUDkzWFhfVklDMCArIDE3KQorI2RlZmluZSBJUlFfRVA5M1hYX0RNQU0y
TTEJCShJUlFfRVA5M1hYX1ZJQzAgKyAxOCkKKyNkZWZpbmUgSVJRX0VQOTNYWF9HUElPME1VWAkJ
KElSUV9FUDkzWFhfVklDMCArIDE5KQorI2RlZmluZSBJUlFfRVA5M1hYX0dQSU8xTVVYCQkoSVJR
X0VQOTNYWF9WSUMwICsgMjApCisjZGVmaW5lIElSUV9FUDkzWFhfR1BJTzJNVVgJCShJUlFfRVA5
M1hYX1ZJQzAgKyAyMSkKKyNkZWZpbmUgSVJRX0VQOTNYWF9HUElPM01VWAkJKElSUV9FUDkzWFhf
VklDMCArIDIyKQorI2RlZmluZSBJUlFfRVA5M1hYX1VBUlQxUlgJCShJUlFfRVA5M1hYX1ZJQzAg
KyAyMykKKyNkZWZpbmUgSVJRX0VQOTNYWF9VQVJUMVRYCQkoSVJRX0VQOTNYWF9WSUMwICsgMjQp
CisjZGVmaW5lIElSUV9FUDkzWFhfVUFSVDJSWAkJKElSUV9FUDkzWFhfVklDMCArIDI1KQorI2Rl
ZmluZSBJUlFfRVA5M1hYX1VBUlQyVFgJCShJUlFfRVA5M1hYX1ZJQzAgKyAyNikKKyNkZWZpbmUg
SVJRX0VQOTNYWF9VQVJUM1JYCQkoSVJRX0VQOTNYWF9WSUMwICsgMjcpCisjZGVmaW5lIElSUV9F
UDkzWFhfVUFSVDNUWAkJKElSUV9FUDkzWFhfVklDMCArIDI4KQorI2RlZmluZSBJUlFfRVA5M1hY
X0tFWQkJCShJUlFfRVA5M1hYX1ZJQzAgKyAyOSkKKyNkZWZpbmUgSVJRX0VQOTNYWF9UT1VDSAkJ
KElSUV9FUDkzWFhfVklDMCArIDMwKQogI2RlZmluZSBFUDkzWFhfVklDMV9WQUxJRF9JUlFfTUFT
SwkweDdmZmZmZmZjCiAKLSNkZWZpbmUgSVJRX0VQOTNYWF9FWFQwCQkJMzIKLSNkZWZpbmUgSVJR
X0VQOTNYWF9FWFQxCQkJMzMKLSNkZWZpbmUgSVJRX0VQOTNYWF9FWFQyCQkJMzQKLSNkZWZpbmUg
SVJRX0VQOTNYWF82NEhaCQkJMzUKLSNkZWZpbmUgSVJRX0VQOTNYWF9XQVRDSERPRwkJMzYKLSNk
ZWZpbmUgSVJRX0VQOTNYWF9SVEMJCQkzNwotI2RlZmluZSBJUlFfRVA5M1hYX0lSREEJCQkzOAot
I2RlZmluZSBJUlFfRVA5M1hYX0VUSEVSTkVUCQkzOQotI2RlZmluZSBJUlFfRVA5M1hYX0VYVDMJ
CQk0MAotI2RlZmluZSBJUlFfRVA5M1hYX1BST0cJCQk0MQotI2RlZmluZSBJUlFfRVA5M1hYXzFI
WgkJCTQyCi0jZGVmaW5lIElSUV9FUDkzWFhfVlNZTkMJCTQzCi0jZGVmaW5lIElSUV9FUDkzWFhf
VklERU9fRklGTwkJNDQKLSNkZWZpbmUgSVJRX0VQOTNYWF9TU1AxUlgJCTQ1Ci0jZGVmaW5lIElS
UV9FUDkzWFhfU1NQMVRYCQk0NgotI2RlZmluZSBJUlFfRVA5M1hYX0dQSU80TVVYCQk0NwotI2Rl
ZmluZSBJUlFfRVA5M1hYX0dQSU81TVVYCQk0OAotI2RlZmluZSBJUlFfRVA5M1hYX0dQSU82TVVY
CQk0OQotI2RlZmluZSBJUlFfRVA5M1hYX0dQSU83TVVYCQk1MAotI2RlZmluZSBJUlFfRVA5M1hY
X1RJTUVSMwkJNTEKLSNkZWZpbmUgSVJRX0VQOTNYWF9VQVJUMQkJNTIKLSNkZWZpbmUgSVJRX0VQ
OTNYWF9TU1AJCQk1MwotI2RlZmluZSBJUlFfRVA5M1hYX1VBUlQyCQk1NAotI2RlZmluZSBJUlFf
RVA5M1hYX1VBUlQzCQk1NQotI2RlZmluZSBJUlFfRVA5M1hYX1VTQgkJCTU2Ci0jZGVmaW5lIElS
UV9FUDkzWFhfRVRIRVJORVRfUE1FCQk1NwotI2RlZmluZSBJUlFfRVA5M1hYX0RTUAkJCTU4Ci0j
ZGVmaW5lIElSUV9FUDkzWFhfR1BJT19BQgkJNTkKLSNkZWZpbmUgSVJRX0VQOTNYWF9TQUkJCQk2
MAorI2RlZmluZSBJUlFfRVA5M1hYX1ZJQzEJCQkoSVJRX0VQOTNYWF9WSUMwICsgMzIpCisKKyNk
ZWZpbmUgSVJRX0VQOTNYWF9FWFQwCQkJKElSUV9FUDkzWFhfVklDMSArIDApCisjZGVmaW5lIElS
UV9FUDkzWFhfRVhUMQkJCShJUlFfRVA5M1hYX1ZJQzEgKyAxKQorI2RlZmluZSBJUlFfRVA5M1hY
X0VYVDIJCQkoSVJRX0VQOTNYWF9WSUMxICsgMikKKyNkZWZpbmUgSVJRX0VQOTNYWF82NEhaCQkJ
KElSUV9FUDkzWFhfVklDMSArIDMpCisjZGVmaW5lIElSUV9FUDkzWFhfV0FUQ0hET0cJCShJUlFf
RVA5M1hYX1ZJQzEgKyA0KQorI2RlZmluZSBJUlFfRVA5M1hYX1JUQwkJCShJUlFfRVA5M1hYX1ZJ
QzEgKyA1KQorI2RlZmluZSBJUlFfRVA5M1hYX0lSREEJCQkoSVJRX0VQOTNYWF9WSUMxICsgNikK
KyNkZWZpbmUgSVJRX0VQOTNYWF9FVEhFUk5FVAkJKElSUV9FUDkzWFhfVklDMSArIDcpCisjZGVm
aW5lIElSUV9FUDkzWFhfRVhUMwkJCShJUlFfRVA5M1hYX1ZJQzEgKyA4KQorI2RlZmluZSBJUlFf
RVA5M1hYX1BST0cJCQkoSVJRX0VQOTNYWF9WSUMxICsgOSkKKyNkZWZpbmUgSVJRX0VQOTNYWF8x
SFoJCQkoSVJRX0VQOTNYWF9WSUMxICsgMTApCisjZGVmaW5lIElSUV9FUDkzWFhfVlNZTkMJCShJ
UlFfRVA5M1hYX1ZJQzEgKyAxMSkKKyNkZWZpbmUgSVJRX0VQOTNYWF9WSURFT19GSUZPCQkoSVJR
X0VQOTNYWF9WSUMxICsgMTIpCisjZGVmaW5lIElSUV9FUDkzWFhfU1NQMVJYCQkoSVJRX0VQOTNY
WF9WSUMxICsgMTMpCisjZGVmaW5lIElSUV9FUDkzWFhfU1NQMVRYCQkoSVJRX0VQOTNYWF9WSUMx
ICsgMTQpCisjZGVmaW5lIElSUV9FUDkzWFhfR1BJTzRNVVgJCShJUlFfRVA5M1hYX1ZJQzEgKyAx
NSkKKyNkZWZpbmUgSVJRX0VQOTNYWF9HUElPNU1VWAkJKElSUV9FUDkzWFhfVklDMSArIDE2KQor
I2RlZmluZSBJUlFfRVA5M1hYX0dQSU82TVVYCQkoSVJRX0VQOTNYWF9WSUMxICsgMTcpCisjZGVm
aW5lIElSUV9FUDkzWFhfR1BJTzdNVVgJCShJUlFfRVA5M1hYX1ZJQzEgKyAxOCkKKyNkZWZpbmUg
SVJRX0VQOTNYWF9USU1FUjMJCShJUlFfRVA5M1hYX1ZJQzEgKyAxOSkKKyNkZWZpbmUgSVJRX0VQ
OTNYWF9VQVJUMQkJKElSUV9FUDkzWFhfVklDMSArIDIwKQorI2RlZmluZSBJUlFfRVA5M1hYX1NT
UAkJCShJUlFfRVA5M1hYX1ZJQzEgKyAyMSkKKyNkZWZpbmUgSVJRX0VQOTNYWF9VQVJUMgkJKElS
UV9FUDkzWFhfVklDMSArIDIyKQorI2RlZmluZSBJUlFfRVA5M1hYX1VBUlQzCQkoSVJRX0VQOTNY
WF9WSUMxICsgMjMpCisjZGVmaW5lIElSUV9FUDkzWFhfVVNCCQkJKElSUV9FUDkzWFhfVklDMSAr
IDI0KQorI2RlZmluZSBJUlFfRVA5M1hYX0VUSEVSTkVUX1BNRQkJKElSUV9FUDkzWFhfVklDMSAr
IDI1KQorI2RlZmluZSBJUlFfRVA5M1hYX0RTUAkJCShJUlFfRVA5M1hYX1ZJQzEgKyAyNikKKyNk
ZWZpbmUgSVJRX0VQOTNYWF9HUElPX0FCCQkoSVJRX0VQOTNYWF9WSUMxICsgMjcpCisjZGVmaW5l
IElSUV9FUDkzWFhfU0FJCQkJKElSUV9FUDkzWFhfVklDMSArIDI4KQogI2RlZmluZSBFUDkzWFhf
VklDMl9WQUxJRF9JUlFfTUFTSwkweDFmZmZmZmZmCiAKLSNkZWZpbmUgTlJfRVA5M1hYX0lSUVMJ
CQkoNjQgKyAyNCkKKyNkZWZpbmUgTlJfRVA5M1hYX0lSUVMJCQkoSVJRX0VQOTNYWF9WSUMxICsg
MzIgKyAyNCkKIAogI2RlZmluZSBFUDkzWFhfQk9BUkRfSVJRKHgpCQkoTlJfRVA5M1hYX0lSUVMg
KyAoeCkpCiAjZGVmaW5lIEVQOTNYWF9CT0FSRF9JUlFTCQkzMgo=
--000000000000ba2049059549847a
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--000000000000ba2049059549847a--

