Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C89118C627
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 04:52:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=byFyoju8PsyFtV9j71+vclu8GBbygQ1AnaEvEw0rGBs=; b=tkC7R9VA7eyPhF
	EZ8T5POiaGFGvGSSuFYERLi1FA5ALXXheSu7NRVVRVDEaktMBu+zfCnImaO15ZB5H8CsopIlozMH+
	MDhKc/+cwI8KD+WJK57IdEvLq7bUZaG06UaGTuGVi90NET+3tGo63geYexp1YJdvpf/NHWvi9eNvh
	xEI6efJ59cBOpyzAhJQGqkIzyCyfO0NeAkc7OjjbuSjd8jPnoIjHrHDsbMjdO9mmqdLVo/TG8NdCp
	qBbLueJVJad0PgfRNUCP9dqskFHG3d5fke025AMJReHjNCjCj0s+aXANkDA98uy9TJXa42Atf3JtC
	MXlSzEsOTD+UC5FSI/dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF8i0-0002wu-Ty; Fri, 20 Mar 2020 03:52:32 +0000
Received: from gateway23.websitewelcome.com ([192.185.48.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF8he-0002r2-7D
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 03:52:11 +0000
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
 by gateway23.websitewelcome.com (Postfix) with ESMTP id 89D225B00
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 22:52:08 -0500 (CDT)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id F8hcje5en8vkBF8hcjV4xo; Thu, 19 Mar 2020 22:52:08 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0ToOek1kJGYOcHP+qxPbLVVm/EbHQvW2obG9/9yoCjw=; b=b3pdFZJLolQqckbfzlnn0BkFxk
 96Sr6PDqx5YmJ2YgfAIZ9ZQm0Lg6+XU1rRufs4/rvHNVTrKs3qHdpN/SbLTaXgecJWPX9dwtlcmpE
 GhlPs/uj3iy7967ztw0v/bCCIgWtOQRaZfmvS/KuGcdJ9rD+QUpSybYLJCtxbgzMXZ6I1Wb+Eols6
 hRPrkBEhTS+pqPQBvsCziiBUK4/04/jkbEtHDgRzIBwqhwH9CkOJ8lKpfFfuuaSYrfRtnvXQm8J9a
 z/P6x6HtkheEHPyJSVmFEveYLNLhxKIcCpWJJSbq50q8KiX0+D7OM6jQFoFK0xdE78OpcvHvGULzj
 c+fNuqaw==;
Received: from [191.31.203.148] (port=48890 helo=castello.castello)
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1jF8hb-000OUT-Jy; Fri, 20 Mar 2020 00:52:08 -0300
From: Matheus Castello <matheus@castello.eng.br>
To: afaerber@suse.de, manivannan.sadhasivam@linaro.org, mark.rutland@arm.com,
 robh+dt@kernel.org
Subject: [PATCH v3 1/3] dt-bindings: Add vendor prefix for Caninos Loucos
Date: Fri, 20 Mar 2020 00:51:02 -0300
Message-Id: <20200320035104.26139-2-matheus@castello.eng.br>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200320035104.26139-1-matheus@castello.eng.br>
References: <20200229104358.GB19610@mani>
 <20200320035104.26139-1-matheus@castello.eng.br>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.203.148
X-Source-L: No
X-Exim-ID: 1jF8hb-000OUT-Jy
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.203.148]:48890
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 14
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_205210_382687_88C8B1F4 
X-CRM114-Status: UNSURE (   5.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.48.84 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Matheus Castello <matheus@castello.eng.br>,
 linux-kernel@vger.kernel.org, igor.lima@lsitec.org.br,
 edgar.righi@lsitec.org.br, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIENhbmlub3MgTG91Y29zIFByb2dyYW0gZGV2ZWxvcHMgU2luZ2xlIEJvYXJkIENvbXB1dGVy
cyB3aXRoIGFuIG9wZW4Kc3RydWN0dXJlLiBUaGUgUHJvZ3JhbSB3YW50cyB0byBmb3JtIGEgY29t
bXVuaXR5IG9mIGRldmVsb3BlcnMgdG8gdXNlCklvVCB0ZWNobm9sb2dpZXMgYW5kIGRpc3NlbWlu
YXRlIHRoZSBsZWFybmluZyBvZiBlbWJlZGRlZCBzeXN0ZW1zIGluCkJyYXppbC4KCkl0IGlzIGFu
IGluaXRpYXRpdmUgb2YgdGhlIFRlY2hub2xvZ2ljYWwgSW50ZWdyYXRlZCBTeXN0ZW1zIExhYm9y
YXRvcnkKKExTSS1URUMpIHdpdGggdGhlIHN1cHBvcnQgb2YgUG9seXRlY2huaWMgU2Nob29sIG9m
IHRoZSBVbml2ZXJzaXR5IG9mClPDo28gUGF1bG8gKFBvbGktVVNQKSBhbmQgSm9uICJNYWRkb2ci
IEhhbGwuCgpTaWduZWQtb2ZmLWJ5OiBNYXRoZXVzIENhc3RlbGxvIDxtYXRoZXVzQGNhc3RlbGxv
LmVuZy5icj4KLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXBy
ZWZpeGVzLnlhbWwgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhl
cy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhl
cy55YW1sCmluZGV4IDllNjc5NDRiZWM5Yy4uMTZlZTM4MmRjNmIyIDEwMDY0NAotLS0gYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sCkBA
IC0xNjUsNiArMTY1LDggQEAgcGF0dGVyblByb3BlcnRpZXM6CiAgICAgZGVzY3JpcHRpb246IENB
TEFPIFN5c3RlbXMgU0FTCiAgICJeY2FseGVkYSwuKiI6CiAgICAgZGVzY3JpcHRpb246IENhbHhl
ZGEKKyAgIl5jYW5pbm9zLC4qIjoKKyAgICBkZXNjcmlwdGlvbjogQ2FuaW5vcyBMb3Vjb3MgUHJv
Z3JhbQogICAiXmNhcGVsbGEsLioiOgogICAgIGRlc2NyaXB0aW9uOiBDYXBlbGxhIE1pY3Jvc3lz
dGVtcywgSW5jCiAgICJeY2FzY29kYSwuKiI6Ci0tCjIuMjUuMAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
