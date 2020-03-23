Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B70EC18F182
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 10:14:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8tSLIac+8YIDO+a04c9GPstBGK1B3ZeNkXP7lF3PXY=; b=Kx0Ce1ZfOgtwgN
	nWjwo1UW2cuRzMdJtFjfI/wcpxKDM8i2ReEBZcuCpc5uKwq4T/JuYBbojx2VSHlVFpOwvn3yY+hkL
	nqInM6YaLbKyqBK/Y7nno5MMQKBcqlhXikh0y8ZxlxoYxhdt+XaSRLvRNaT293lfEWNNHV7JlPEIP
	uGufDwsWrWQ1nb3ls1afBsIqns1WU/9UYlztIIkW6Uha6XTMjEalGdzwZsBbRwvV6HXzwh8UlmU/w
	XIv4eg8nVMsJX2X1a741akIyqzH2fCFxvGkqzJa68AbL0XTBlSizoDFXwPNc/U5lysb6pwEcjKT1O
	zubsxMGPDpt3GWB/Vq+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGJ9r-00086N-HG; Mon, 23 Mar 2020 09:14:07 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGJ9j-00085y-2R
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 09:14:00 +0000
Received: by mail-lf1-x143.google.com with SMTP id j188so5744724lfj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 02:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=wWs92IouvEIpZgtyLlUCar33wlELXd5YoEyPXlLiTro=;
 b=QbDeCI7dYNFzd6fyHyqfAHAq63bQLRiJHT19fT4MkRi6jTMuI0QC28e9a4Pak1jEUa
 s11EYGMPEm6ADD5Mq5hQuV9351l3yGYjAbg+dzzd7aio3ISGAIuswd0yNbbHR9YIu30S
 M+ZYpecb4mDH7vTudL1qV/c8X68h61ZfXm89Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=wWs92IouvEIpZgtyLlUCar33wlELXd5YoEyPXlLiTro=;
 b=OOj4HV+LCAP2bCDf6cZxmv6JkMS1HVWqRqW3LewFkYiDigmmGJJcBveV5wJ4A3atI1
 Zd5iYmSh1Iw0/FnXS+PGkoG/pzc3JRYtYzCEFPYcwdTQai3+pQIfesW7cgKfFOItY8oM
 lpgf2D1ktPOpm5/VB3+HiOFODqySKutVKg2Bk0gHx5UWy2Yn53vhgrdLjWPZo9w+JMD4
 euIuufFN8H8ga+CDEFA1waUTtTaGINphDYtUV+NbHbQ61w7QSJAmdE818eqooxL42N9m
 MG14DWmDlLFSvNRtjSXtaWfGRTY+FPhOCxNCHpgg8OUYBO6Gu+z4OQvYRoLP7eA+vyFZ
 Nqsw==
X-Gm-Message-State: ANhLgQ0AdbJ8u5xK3KG+oVhvojtUdsrtOAoBjw3C/kfmmulimDS3xq/9
 itbtR/vZB2mR6qMpl2PTXBa7L1Z0xGdJb9and9ol8A==
X-Google-Smtp-Source: ADFU+vvx8jnLhfOgnWnseH4FTxIWcdY7WQsK5Ay/qiqPamQPGqpt4kJFOWL+guGHsaQwYq7XlwwWqRibftYmyeWIuKk=
X-Received: by 2002:a05:6512:3041:: with SMTP id
 b1mr12674571lfb.167.1584954837051; 
 Mon, 23 Mar 2020 02:13:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200323065318.16533-1-rayagonda.kokatanur@broadcom.com>
 <20200323065318.16533-3-rayagonda.kokatanur@broadcom.com>
 <20200323082823.twvpagq7tvrt76ws@pengutronix.de>
In-Reply-To: <20200323082823.twvpagq7tvrt76ws@pengutronix.de>
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Date: Mon, 23 Mar 2020 14:43:45 +0530
Message-ID: <CAHO=5PHUPy=2_HZg26Akogv3Hbic7JPydGpz0j3QfA=3TUgCJw@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] pwm: bcm-iproc: remove unnecessary check of 'duty'
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_021359_116744_8D4EC4D3 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXIgMjMsIDIwMjAgYXQgMTo1OCBQTSBVd2UgS2xlaW5lLUvDtm5pZwo8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IE9uIE1vbiwgTWFyIDIzLCAyMDIw
IGF0IDEyOjIzOjE4UE0gKzA1MzAsIFJheWFnb25kYSBLb2thdGFudXIgd3JvdGU6Cj4gPiBWYXJp
YWJsZSAnZHV0eScgaXMgdTMyLiBIZW5jZSB0aGUgbGVzcy10aGFuIHplcm8KPiA+IGNvbXBhcmlz
b24gaXMgbmV2ZXIgdHJ1ZSwgcmVtb3ZlIHRoZSBjaGVjay4KPgo+IEhvdyBkaWQgeW91IGZpbmQg
dGhhdCBvbmU/IEkgYXNzdW1lIGl0IHdhcyBhIGNvbXBpbGVyIHdhcm5pbmcgeW91IGZpeGVkCj4g
aGVyZT8gSW4gdGhpcyBjYXNlIHF1b3RpbmcgdGhlIHdhcm5pbmcgaW1wcm92ZXMgdGhlIGNvbW1p
dCBsb2cuCkl0cyByZXBvcnRlZCBieSBpbnRlcm5hbCBjb3Zlcml0eSB0b29sLgo+Cj4gQWxzbyB0
aGUgY29tbWl0IGxvZyBzdWdnZXN0cyB0aGF0IElQUk9DX1BXTV9EVVRZX0NZQ0xFX01JTiBpcyB6
ZXJvLgo+IE1heWJlIG1lbnRpb25pbmcgdGhhdCBleHBsaWNpdGx5IGlzIGEgbmljZSBhZGRpdGlv
biwgdG9vLgpPa2F5LCB3aWxsIGFkZCB0aGlzIHRvIGNvbW1pdCBtZXNzYWdlLiBUaGFua3MuCj4K
PiA+IEZpeGVzOiBkYWE1YWJjNDFjODAgKCJwd206IEFkZCBzdXBwb3J0IGZvciBCcm9hZGNvbSBp
UHJvYyBQV00gY29udHJvbGxlciIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBSYXlhZ29uZGEgS29rYXRh
bnVyIDxyYXlhZ29uZGEua29rYXRhbnVyQGJyb2FkY29tLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZl
cnMvcHdtL3B3bS1iY20taXByb2MuYyB8IDMgKy0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3B3
bS9wd20tYmNtLWlwcm9jLmMgYi9kcml2ZXJzL3B3bS9wd20tYmNtLWlwcm9jLmMKPiA+IGluZGV4
IDhiYmQyYTA0ZmVhZC4uMWJiNjY3MjFmOTg1IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9wd20v
cHdtLWJjbS1pcHJvYy5jCj4gPiArKysgYi9kcml2ZXJzL3B3bS9wd20tYmNtLWlwcm9jLmMKPiA+
IEBAIC0xNDksOCArMTQ5LDcgQEAgc3RhdGljIGludCBpcHJvY19wd21jX2FwcGx5KHN0cnVjdCBw
d21fY2hpcCAqY2hpcCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3bSwKPiA+ICAgICAgICAgICAgICAg
dmFsdWUgPSByYXRlICogc3RhdGUtPmR1dHlfY3ljbGU7Cj4gPiAgICAgICAgICAgICAgIGR1dHkg
PSBkaXY2NF91NjQodmFsdWUsIGRpdik7Cj4gPgo+ID4gLSAgICAgICAgICAgICBpZiAocGVyaW9k
IDwgSVBST0NfUFdNX1BFUklPRF9NSU4gfHwKPiA+IC0gICAgICAgICAgICAgICAgIGR1dHkgPCBJ
UFJPQ19QV01fRFVUWV9DWUNMRV9NSU4pCj4gPiArICAgICAgICAgICAgIGlmIChwZXJpb2QgPCBJ
UFJPQ19QV01fUEVSSU9EX01JTikKPiA+ICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJ
TlZBTDsKPgo+IEJlc3QgcmVnYXJkcwo+IFV3ZQo+Cj4gLS0KPiBQZW5ndXRyb25peCBlLksuICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCBVd2UgS2xlaW5lLUvDtm5pZyAgICAgICAgICAgIHwK
PiBJbmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAgfCBodHRwczovL3d3
dy5wZW5ndXRyb25peC5kZS8gfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
