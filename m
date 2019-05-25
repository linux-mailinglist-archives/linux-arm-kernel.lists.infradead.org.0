Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D158B2A541
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 18:23:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oZHoVI/4TGsnc6m5mpF0LCL1uGIKczyUniQupCQhOBQ=; b=NK41HvR2qrMDwv
	l07lJ9UeSDMJBMz19PS5ARK/ppZ4t7E4AF13zZ5FWErcRZuiZDkCVeJEUmhc26bDzjr6AxeWt7jMT
	+6gxadtfdWTgwoZ6f52lxq55zkZ1ECynbeCNamV7vtjbC7RPPENK2Rocxr6YCtLdSprqQ6JFgWhfD
	HFeDLGnv0uo0R8wfASo0avG6EZ2VBxzq5cKZ0a8WkUjx9chj3ut4kOxf0MZAynvtTcdGqm3swhwgy
	/rJrm4wwCqRXUHjxAfgLbzoMu+YlUBT7DowDMRaXi60BPHF2a/CYwYBCHBvQLOhVOyQrEeQELO0rw
	d1jDdp6QsAO4yQD8t/2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUZSc-00066f-PZ; Sat, 25 May 2019 16:23:54 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUZSI-0005tV-Ai
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 16:23:35 +0000
Received: by mail-wr1-x444.google.com with SMTP id l2so12803062wrb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 09:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1LlOtACKjbEr/GliRByNyiFfoBZkDJEiHct/H5BNOuY=;
 b=ZV5jA5v5EdN40oeJfD4arM0grlVd263pi7HCfu/Lc0qtmkGH6d5JkHX4RLYsVFdo7p
 RxxjsRkFcC3QtLx+gTS7jcGmaZb71ntgsbN8wtjFp5ovd1e8g1cmsNQ9K4Qd5sxVgFzi
 g1PtXq+RM5z3TsGHjJ7KOI/qavbiq7v7ao+zXTa8wXBnh2RhTZVGA9Pzoy02MxBUS9th
 XkP83HXw2qGBW46cSdiN9KuONPMA21B2CtuaYs2KgH0RDSfFhRAk6m4m++OrwiemvWoC
 1etX1l5ZhdKBlg91SWsWmqQNpLC5KWeZhjl8AEXmoeNEg5rPmVScInG4vBtHdTPpsklu
 Hnow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1LlOtACKjbEr/GliRByNyiFfoBZkDJEiHct/H5BNOuY=;
 b=RxXgeoBQt+8moo4cSEMWl7ClTRkCKsgiANPj9ydZc9Zl+blDO4hSKv+ltEIJEJQWu2
 /LtZhbQYoZceAOaEoZr2m6SR5D8pYAowY4U0N41e4mPtU2PYeewlFe54gxbJkTgwn2t6
 BvmshpSgBBU0gHwOC2Y1kuuLl/uJE2ZI5k21WjiXWI+K0hS2e+1/DeaVP9rS0s2ZvFZY
 sW+7obVL13n4KIQcvnGa9r4V5/RQmedFwhl3hxHRMFNlQIL1zk95dhNih3bjIXrF8/nC
 ZnEIp9TGkE2mD82D8nJDpXm/oD1hw/+BFuGaHegJGdUXWmimMXnnTD58wYEI59D6oTl+
 epDQ==
X-Gm-Message-State: APjAAAV2nYCjGfrjYwdHtIa6t+6dPq1Eq8PgtdUMUlT//RBJRNWP+H34
 pbG0IkNiwKdNMijSXmW2tzE=
X-Google-Smtp-Source: APXvYqyTO2kOLZBGZBHawTkZ0RtUqR/jB9g+6yvYM7oTKfsB/3wBtPdMWgtfwwH/UI2W4r3SWneX/A==
X-Received: by 2002:adf:dcd1:: with SMTP id x17mr16454565wrm.98.1558801410917; 
 Sat, 25 May 2019 09:23:30 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id k184sm13194409wmk.0.2019.05.25.09.23.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 25 May 2019 09:23:29 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 0/7] Allwinner H6 SPDIF support
Date: Sat, 25 May 2019 18:23:16 +0200
Message-Id: <20190525162323.20216-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_092334_390741_15955580 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kkg2IERNQSBzdXBwb3J0IElTIFJFUVVJUkVEKgoKQWxsd2lubmVyIEg2IFNvQyBoYXMgYSBTUERJ
RiBjb250cm9sbGVyIGNhbGxlZCBPbmUgV2lyZSBBdWRpbyAoT1dBKSB3aGljaAppcyBkaWZmZXJl
bnQgZnJvbSB0aGUgcHJldmlvdXMgSDMgZ2VuZXJhdGlvbiBhbmQgbm90IGNvbXBhdGlibGUuCgpE
aWZmZXJlbmNlIGFyZSBhbiBpbmNyZWFzZSBvZiBmaWZvIHNpemVzLCBzb21lIG1lbW9yeSBtYXBw
aW5nIGFyZSBkaWZmZXJlbnQKYW5kIHRoZXJlIGlzIG5vdyB0aGUgcG9zc2liaWxpdHkgdG8gb3V0
cHV0IHRoZSBtYXN0ZXIgY2xvY2sgb24gYSBwaW4uCgpBY3R1YWxseSBhbGwgdGhlc2UgZmVhdHVy
ZXMgYXJlIHVudXNlZCBhbmQgb25seSBhIGJpdCBmb3IgZmx1c2hpbmcgdGhlIFRYCmZpZm8gaXMg
cmVxdWlyZWQuCgpBbHNvIHRoaXMgc2VyaWVzIHJlcXVpcmVzIHRoZSBETUEgd29ya2luZyBvbiBI
NiwgYSBmaXJzdCB2ZXJzaW9uIGhhcyBiZWVuCnN1Ym1pdHRlZCBieSBKZXJuZWogxaBrcmFiZWNb
MV0gYnV0IGhhcyBub3QgYmVlbiBhY2NlcHRlZCB5ZXQuCgpbMV0gaHR0cHM6Ly9wYXRjaHdvcmsu
a2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LWFybS1rZXJuZWwvbGlzdC8/c2VyaWVzPTg5MDExCgpD
aGFuZ2VzIHNpbmNlIHYyOgogLSBTcGxpdCBxdWlya3MgYW5kIEg2IHN1cHBvcnQgcGF0Y2gKIC0g
QWRkIHNwZWNpZmljIHNlY3Rpb24gZm9yIHF1aXJrcyBjb21tZW50CgpDaGFuZ2VzIHNpbmNlIHYx
OgogLSBSZW1vdmUgSDMgY29tcGF0aWJsZQogLSBBZGQgVFggZmlmbyBiaXQgZmx1c2ggcXVpcmtz
CiAtIEFkZCBINiBiaW5kaW5ncyBpbiBTUERJRiBkcml2ZXIKCkNsw6ltZW50IFDDqXJvbiAoNyk6
CiAgZHQtYmluZGluZ3M6IHNvdW5kOiBzdW40aS1zcGRpZjogQWRkIEFsbHdpbm5lciBINiBjb21w
YXRpYmxlCiAgQVNvQzogc3VuNGktc3BkaWY6IE1vdmUgcXVpcmtzIHRvIHRoZSB0b3AKICBBU29D
OiBzdW40aS1zcGRpZjogQWRkIFRYIGZpZm8gYml0IGZsdXNoIHF1aXJrcwogIEFTb0M6IHN1bjRp
LXNwZGlmOiBBZGQgc3VwcG9ydCBmb3IgSDYgU29DCiAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBB
ZGQgU1BESUYgbm9kZSBmb3IgQWxsd2lubmVyIEg2CiAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBo
NjogRW5hYmxlIFNQRElGIGZvciBCZWVsaW5rIEdTMQogIGFybTY0OiBkZWZjb25maWc6IEVuYWJs
ZSBTdW40aSBTUERJRiBtb2R1bGUKCiAuLi4vYmluZGluZ3Mvc291bmQvc3VueGksc3VuNGktc3Bk
aWYudHh0ICAgICAgfCAgMyArLQogLi4uL2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmst
Z3MxLmR0cyAgIHwgIDQgKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1o
Ni5kdHNpICB8IDM4ICsrKysrKysrKysrKysrCiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmln
ICAgICAgICAgICAgICAgICAgfCAgMSArCiBzb3VuZC9zb2Mvc3VueGkvc3VuNGktc3BkaWYuYyAg
ICAgICAgICAgICAgICAgfCA0OSArKysrKysrKysrKysrKysrLS0tCiA1IGZpbGVzIGNoYW5nZWQs
IDg4IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
