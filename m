Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FE161573
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jul 2019 17:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9T2RlpcEC2dRSkl8Rr65+VuMbzSVHM79tKlWv0FPecs=; b=jVuNYfARW4F7TF
	7xrg4Bf9YRml3MBM7AB5Nph+q5s5yMTzuPpcU+hO45+IdQJTivpI9UE2+2GKMtgpKMDaiOfgq0H/l
	8dXAOSXouBpIJ+DzPzMJITZEK0/x0TTB1cmVUsP3/zPf7gvrJQkOgeOCJ1x+GnXY1pI0ZZ0F1TseN
	7oemQF7xIYUg/7Tj+b3Dw/9TmEC40eMP4Ba7tFStvTF66WfG4b90ncPLtMVyQBkNUBIUYnl1OCZCQ
	pM2GpBfHEksei5xcdWaSm0EbJZ323BVmuZjkf8LTSa1X+BWOuvKuV28H32eSH5rUeaxyXh9pSOHjI
	GXICWljjEqKMDmADGhqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hk9NC-0008Db-4y; Sun, 07 Jul 2019 15:46:42 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hk9My-0008Ch-CT
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jul 2019 15:46:29 +0000
Received: by mail-wr1-x443.google.com with SMTP id u18so14455695wru.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jul 2019 08:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=bGbtCUO4BOGVmzuMetixQhEWqFmuXemkUETV1bb996A=;
 b=HurwfdDW3WShikoqlGrI+gydUdaNqT7nPbx+UlqF+z+96uFR0gEOxu7vwrwEIcA652
 2vLX1bspJ3g8K3J1VtUAGpR5FCLx9lLvut88FGuKNVLFdX/2lcoTuwUtN+fRSAFZA06C
 h3kZvDezlWrGwrV5wdCB3lIDTpAJgeXke0hpev1TE61jvqFG5Q8yBYNszPBPzyqCXmkY
 wILy7HTrAmn8ZexDHsiSOrgg93jeFW6C/CdXiocgdhKz2/Y0n1edjGs0EC7XaJNuoUsF
 ONWgtki6SDtg6krR9585ICxqV98f6NBs1JiTf3jw1DHeSzMNm1n2D6Ho5zQPOBX0SNgp
 oUzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=bGbtCUO4BOGVmzuMetixQhEWqFmuXemkUETV1bb996A=;
 b=I5oZBaMuzpDWYSmL56b05c1OLGHBeAZ1M83o43m71MJKJTxPWF1XfloaqRhbU7MO95
 /pMpjjU9jNh97k+LIxbhDt6amqp9QPp4+I98mZGKJhrueIjUs18Pjzoy+1Pnaa1yDP3P
 GMLFIqmxJh4BrgGwgGFcNoSE/j7lVrPPkKWqlziwLj2xIEsXN2BaZ3imFsglm1xHmcdq
 WizUtyhahvHrkE5biXqljyFVPrhC93VNUommuTVST7mlnG5cnFIyZo93QWQDHQCENSQZ
 ZEa67bUu3uS0kCbLIgll2nIUJ0ADQYu/UHbEcHwA4NO/N6qXy5CP5XqgSmaxDpP+T7N9
 qpAg==
X-Gm-Message-State: APjAAAV84ztO7SXGiyIKZBtP/PGEhdyUWC4kaXkuDNrc3ONfZVdrMip+
 /rksiJInoijzXk2JyJY0f0E=
X-Google-Smtp-Source: APXvYqw9VqMOs+dnAC5XrgWMcL+6DE/EqrdzKGc6ZeBG3yR+KiuAuikZUZouVTyX/acHxAB3S/hQsw==
X-Received: by 2002:a5d:42c5:: with SMTP id t5mr4824387wrr.5.1562514384972;
 Sun, 07 Jul 2019 08:46:24 -0700 (PDT)
Received: from arks.localdomain (179.red-83-58-138.dynamicip.rima-tde.net.
 [83.58.138.179])
 by smtp.gmail.com with ESMTPSA id f17sm9779586wmf.27.2019.07.07.08.46.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 07 Jul 2019 08:46:24 -0700 (PDT)
Date: Sun, 7 Jul 2019 17:46:17 +0200
From: Aleix Roca Nonell <kernelrocks@gmail.com>
To: Andreas =?utf-8?Q?F=C3=A4rber?= <afaerber@suse.de>
Subject: Re: [PATCH 2/6] irqchip: Add Realtek RTD129x intc driver
Message-ID: <20190707154617.GA18436@arks.localdomain>
References: <20190707132256.GC13340@arks.localdomain>
 <baeb2dd8-0382-01ad-514b-982c0f123e6e@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <baeb2dd8-0382-01ad-514b-982c0f123e6e@suse.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_084628_454639_52993781 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelrocks[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <marc.zyngier@arm.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBKdWwgMDcsIDIwMTkgYXQgMDM6Mjc6MTZQTSArMDIwMCwgQW5kcmVhcyBGw6RyYmVy
IHdyb3RlOgo+IEFtIDA3LjA3LjE5IHVtIDE1OjIyIHNjaHJpZWIgQWxlaXggUm9jYSBOb25lbGw6
Cj4gPiBUaGlzIGRyaXZlciBhZGRzIHN1cHBvcnQgZm9yIHRoZSBSVEQxMjk2IGFuZCBSVEQxMjk1
IGludGVycnVwdAo+ID4gY29udHJvbGxlciAoaW50YykuIEl0IGlzIGJhc2VkIG9uIGJvdGggdGhl
IEJQSS1TSU5PVk9JUCBwcm9qZWN0IGFuZAo+ID4gQW5kcmVhcyBGw6RyYmVyJ3MgcHJldmlvdXMg
YXR0ZW1wdCB0byBzdWJtaXQgYSBzaW1pbGFyIGRyaXZlci4KPiAKPiBEb2luZyB0aGF0IHdpdGhv
dXQgbXkgU2lnbmVkLW9mZi1ieSBhbmQgQ29weXJpZ2h0IGlzIGNlcnRhaW5seSBub3Qgb2theS4K
PiBJdCBpcyBhbHNvIGxhY2tpbmcgYSBjbGVhciBkZXNjcmlwdGlvbiBvZiB3aGF0IHlvdSBjaGFu
Z2VkIGZyb20gbXkgbGFzdAo+IHN1Ym1pc3Npb24gb3IgdGhlIHBvc3Qtc3VibWlzc2lvbiBHaXRI
dWIgdmVyc2lvbiBhZHJlc3NpbmcgcmV2aWV3Cj4gY29tbWVudHMsIHdoaWNoIGJyb2tlLgoKSSdt
IHJlYWxseSBzb3JyeSBhYm91dCB0aGF0LCBiZWNhdXNlIEkgcmV3cm90ZSB0aGUgY29kZSAoYWxt
b3N0KSBmcm9tCnNjcmF0Y2ggKGdpdmVuIHRoYXQgSSB3YXNuJ3QgYXdhcmUgb2YgdGhpcyBwcmV2
aW91cyBhdHRlbXB0IHdoZW4gSQpzdGFydGVkIHdvcmtpbmcgd2l0aCBpdCkgSSB3YXMgbm90IHN1
cmUgaWYgaXQgd2FzIG5lY2Vzc2FyeS4gSSB3aWxsCmFkZHJlc3MgdGhpcyBpbiB0aGUgbmV4dCB2
ZXJzaW9uIG9mIHRoZSBwYXRjaCBzZXJpZXMuCgpUaGFuayB5b3UgYW5kIHNvcnJ5IGZvciB0aGUg
aW5jb252ZW5pZW5jZS4KCj4gCj4gUmVnYXJkcywKPiBBbmRyZWFzCj4gCj4gLS0gCj4gU1VTRSBM
aW51eCBHbWJICj4gTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55Cj4gR0Y6
IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCj4gSFJCIDIxMjg0
IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
