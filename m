Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1DD17C0CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 15:45:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XWTCZ0s6MXo4xgxNIP357qMsSsknYuWYpkUL8dafX8s=; b=q0EuAmpXYpnrM9
	qMm/eiav5JTwNl114kiSPCoHmSuP8tkl23+yYifVIAQ053Fp49BCFhQpMTShOJY3t9xdu0sHn6elE
	anLaLppu0k729oBPGoWeIFsZ1JC9+oaBIVZ0pxVO6V6yvgjNL2QiRJ8H4OtxA4BuMLaE+YeeB1Q3b
	sZzCAb9LIJc98JLF/NuPBTJX8HJ7bz2rvoC2esItedCGIB1ls5R82+bxZXAv+XXaGzlI8vbZ3zhvW
	1PesQzySz805ZGVZj32XBnq7Wupemn3NErzRyXSKkFQ9yKVqkt5xcAhcC01iv4Kk+JAOiZ7OXZQGf
	+ftE30gMB7YabGHQOGeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAEDd-0004a0-Ih; Fri, 06 Mar 2020 14:44:53 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAEDW-0004ZY-1L
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 14:44:47 +0000
Received: by mail-qt1-x844.google.com with SMTP id e13so1857764qts.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 06:44:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=518hMwbsCsnyP/dB9C2/OgbWz00OdebKwI9UeSAw2TQ=;
 b=UKn3ZOmHliESQFL4acmMtFs6xNMVgD2SYN401x8G989e969hHmIOBDhUUkzPbvn2ze
 t8iUUEi8b2Pi5GNrW7Rt0fOtIbgOJ7yxdNxXDIOQOQh/kDQtHBi5IFKikg4ciABcKkRN
 Q7Nv3kYSXtRPYepWvOl6k241BTN+Hc6ouBTMLUI9T46c2tdUHy+72JLrQ1YnxD4y2gQH
 x2VGkLZeS98C636ScvmdZ18jX0reOyV8e0LjHL3G3jtvRRkx7kiQDtznF2sxBMB+ODB/
 FX8+EHMdl8FKzPNrGOqOxJXa1pSnlFcIFD5Wah3u5qWtlIBdHeUFdoPkl4ipsE5LeFy9
 fwuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=518hMwbsCsnyP/dB9C2/OgbWz00OdebKwI9UeSAw2TQ=;
 b=sbsHuSUOKXzeAyzmV+5cQRCMCZ7SPwVZbjb2OXzNIYxgZBTXTAKZQTVhI17THKVTFr
 SXEKUYMEbG8HmqBy/CIOtmxrpl9Yw4U/1oKPhqk/DJgW31km+TPNzucKhibrDccpTt21
 bgYIBpcGc7PXu/2f2GUnWOPRhlYvLpLw2WKK0Q1c1jZ3dechwhIefLKmr6upVeqwYkuP
 NHQcpgsfDLk53aE5jqzt8HOUgD0T2krOfje0CohcAxGb6tLhsd0G83IGIJ4a2AHJvjmS
 scJjwdNl35DR8CBVJjnd/Dv2pyv04JcFDbZpHh6kNoKv88H0/BUfSFQVZRc6gxiRMXVO
 Rf4g==
X-Gm-Message-State: ANhLgQ1dmY4gv0vWq+fZj+RQSiV0vJM2ams1asHJTycVTteczBpQ/Xe+
 JSU03ubVZI/FLJbz36kkR43JyCzF8QZf7SMIEcAAIw==
X-Google-Smtp-Source: ADFU+vu4U/dNx0QcNZ2vEVN12gifYuQ7Fr8ARH3ry0S07HX1FFcS8SFZtPwPvlsBxyvk8A6DHHwNRQC4nAghZCJ4Xvc=
X-Received: by 2002:aed:3f3c:: with SMTP id p57mr3299105qtf.234.1583505884448; 
 Fri, 06 Mar 2020 06:44:44 -0800 (PST)
MIME-Version: 1.0
References: <20200303203559.23995-1-ulf.hansson@linaro.org>
 <20200303203559.23995-5-ulf.hansson@linaro.org> <20200304122312.GE25004@bogus>
 <CAPDyKFpcN-p6sKqB0ujHAY29qPSg7qpSjYGymPaJ4W8jgCKGcg@mail.gmail.com>
 <20200305162321.GB53631@bogus>
 <CAPDyKFogjPG+mRsfPaxN7RjB7TQL9=qHNzA=K_t0F6M6Q9-TuA@mail.gmail.com>
 <20200306100431.GA16541@bogus>
 <CA+M3ks764moVU2h9iZJuN6B-e4wBUMymBfPnob_zraf50xqezA@mail.gmail.com>
 <20200306120646.GB44221@bogus>
 <CA+M3ks7+P=CjvUE28boANhrR6bhzLzyjBLovzWL_LjwL3UqmzQ@mail.gmail.com>
 <20200306134119.GB47929@bogus>
In-Reply-To: <20200306134119.GB47929@bogus>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Fri, 6 Mar 2020 15:44:33 +0100
Message-ID: <CA+M3ks5XBFcJqQozA=k6nU2XawRYT_qKnLW9t_GdkoRGNEd1yA@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] cpuidle: psci: Allow WFI to be the only state for
 the hierarchical topology
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_064446_111503_BB45606A 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgdmVuLiA2IG1hcnMgMjAyMCDDoCAxNToyMywgU3VkZWVwIEhvbGxhIDxzdWRlZXAuaG9sbGFA
YXJtLmNvbT4gYSDDqWNyaXQgOgo+Cj4gT24gRnJpLCBNYXIgMDYsIDIwMjAgYXQgMDE6MzI6NTlQ
TSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gPiBMZSB2ZW4uIDYgbWFycyAyMDIw
IMOgIDEzOjA2LCBTdWRlZXAgSG9sbGEgPHN1ZGVlcC5ob2xsYUBhcm0uY29tPiBhIMOpY3JpdCA6
Cj4gPiA+Cj4KPiBbLi4uXQo+Cj4gPiA+IFN1cmUsIHBsZWFzZSBjcmVhdGUgYSBkZWVwZXIgQ1BV
IHN0YXRlIHRoYW4gV0ZJIGFuZCBlbnRlciBzbyB0aGF0IHRoZSBDUFUKPiA+ID4gc3RhdGUgaXMg
c2F2ZWQgYW5kIHJlc3RvcmVkIGNvcnJlY3RseS4gV2hhdCBpcyB0aGUgcHJvYmxlbSBkb2luZyB0
aGF0ID8KPiA+Cj4gPiBUaGlzIHN0YXRlIHN0b3AgdGhlIGNsb2NrcyBmb3IgYWxsIHRoZSBoYXJk
d2FyZSBibG9ja3MgYW5kIG5vdCBvbmx5IHRoZSBDUFVzCj4gPiBzbyB3ZSBjYW4ndCBnbyBvbiBp
dCB3aGlsZSBkZXZpY2VzIGFyZW4ndCBzdXNwZW5kZWQuCj4gPiBJIG1heSBoYXZlIG1pc3NlZCBz
b21ldGhpbmcgYnV0IEkgZG9uJ3QgYmVsaWV2ZSB0aGF0IEkgY291bGQgYWRkIHRoaXMga2luZCBv
Zgo+ID4gY29uZGl0aW9ucyBpbiBhIGNwdSBpZGxlIHN0YXRlLCByaWdodCA/Cj4gPiBJbiB0aGlz
IHN0YXRlIEkgbmVlZCB0byBiZSBhYmxlIHRvIGVuYWJsZSB0aGUgd2FrZSB1cCBzb3VyY2VzIGJl
Y2F1c2UKPiA+IGl0IGlzIHRoZSBvbmx5Cj4gPiBmb3IgaGFyZHdhcmUgYmxvY2sgdXNlZCBhcyBi
cm9hZGNhc3QgdGltZXIgdG8gd2FrZSB1cCB0aGUgc3lzdGVtLgo+ID4KPgo+IFdlIGhhdmUgZGlz
Y3Vzc2VkIHRoaXMgaW4gcGFzdCBpbiB0aGUgdGhyZWFkIEkgbWVudGlvbmVkIGFuZCBtYXkgYmUK
PiBvdGhlcnMgdG9vLiBJdCBzb3VuZHMgbGlrZSBhIGJyb2tlbiBoYXJkd2FyZSwgc29ycnkgaWYg
SSBhbSB3cm9uZy4KPiBCdXQgdGhpcyAkc3ViamVjdCBwYXRjaCBpcyBhIGhhY2sgdG8gc29sdmUg
dGhhdCBhbmQgSSBhbSBOQUNLLWluZyB0aGlzCj4gbm93LiBQbGVhc2UgZml4IGl0IGFkZGluZyBh
bm90aGVyIENQVSBsZXZlbCBpZGxlIHN0YXRlLCB3ZSBhcmUgbm90Cj4gc3VwcG9ydGluZyB3aXRo
b3V0IHRoYXQgYW5kIHRoZXJlIGlzIGFic29sdXRlbHkgbm8gbmVlZCB0by4KCkEgQ1BVIGlkbGUg
c3RhdGUgb25seSB0YWtlIGNhcmUgb2YgQ1BVIGFjdGl2aXRpZXMsIHJpZ2h0ID8gYnV0IGJlZm9y
ZSBnb2luZyBpbgp0aGUgdGFyZ2V0aW5nIHN0YXRlIEkgbmVlZCB0byBiZSBzdXJlIHRoYXQgdGhl
IG90aGVyIGhhcmR3YXJlIGJsb2NrcwphcmUgc3VzcGVuZGVkLgpJcyBpdCBwb3NzaWJsZSB0byBk
ZXNjcmliZSB0aGF0IGluIGFuIGlkbGUgc3RhdGUgPwpXaGF0IHNvdW5kIGJyb2tlbiA/IGlzIGl0
IGJlY2F1c2Ugd2UgbmVlZCB0byBzZXR1cCB0aGUgd2FrZSB1cCBzb3VyY2VzID8KCj4KPiAtLQo+
IFJlZ2FyZHMsCj4gU3VkZWVwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
